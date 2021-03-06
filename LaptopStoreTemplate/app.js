var createError = require('http-errors');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var wnumb = require('wnumb');
var fileUpload = require('express-fileupload');

var express = require('express');
var express_handlebars  = require('express-handlebars');
var express_handlebars_sections = require('express-handlebars-sections');

var session = require('express-session');
var MySQLStore = require('express-mysql-session')(session);



/*middle-wares*/
var handleLayoutMDW = require('./middle-wares/handleLayout');
var restrict = require('./middle-wares/restrict');
var handle404MDW = require('./middle-wares/handle404');
var bodyParser = require('body-parser');
var request = require('request');

/**********USER***************/
var userRouter = require('./routes/user');

var userController = require('./controller/userController');
var cartController = require('./controller/cartController');
var paymentController = require('./controller/paymentController');

/************************/

/*********ADMIN***************/
var adminHomeController = require('./controller/adminControllers/homeController');
var adminCategoryController = require('./controller/adminControllers/categoryController');
var adminOderController = require('./controller/adminControllers/orderController');
var adminProductController = require('./controller/adminControllers/productController');

/************************/
var app = express();


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));


app.engine('hbs', express_handlebars({
    extname: '.hbs',
    defaultLayout: 'main.layout.hbs',
    partialsDir: path.join(__dirname, 'views/_partials'),
    layoutsDir: path.join(__dirname, 'views/_layouts'),
    helpers: {
        section: express_handlebars_sections(),
        number_format: n => {
            var nf = wnumb({
                thousand: ',',
                suffix: ' VND'
            });
            return nf.to(n);
        },
        compare: function(lvalue, rvalue, options) {

            if (arguments.length < 3)
                throw new Error("Handlerbars Helper 'compare' needs 2 parameters");

            var operator = options.hash.operator || "==";

            var operators = {
                '==': function (l, r) {
                    return l == r;
                },
                '===': function (l, r) {
                    return l === r;
                },
                '!=': function (l, r) {
                    return l != r;
                },
                '<': function (l, r) {
                    return l < r;
                },
                '>': function (l, r) {
                    return l > r;
                },
                '<=': function (l, r) {
                    return l <= r;
                },
                '>=': function (l, r) {
                    return l >= r;
                },
                'typeof': function (l, r) {
                    return typeof l == r;
                }
            }

            if (!operators[operator])
                throw new Error("Handlerbars Helper 'compare' doesn't know the operator " + operator);

            var result = operators[operator](lvalue, rvalue);

            if (result) {
                return options.fn(this);
            } else {
                return options.inverse(this);
            }
        }    }
}));



// view engine setup
app.use(fileUpload());
app.set('views', path.join(__dirname, 'views'));
app.set('view engine','hbs');
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

//Muốn ngăn chặn người dùng truy cập vào file public -> viết middle-ware xử lý ngăn chặn giữa response và request
app.use(express.static(path.join(__dirname, 'public/Client')));

/////////////// Router////////////////////




/*Sessions*/
var sessionStore = new MySQLStore({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'root',
    database: 'laptoponline',
    createDatabaseTable: true,
    schema: {
        tableName: 'sessions',
        columnNames: {
            session_id: 'session_id',
            expires: 'expires',
            data: 'data'
        }
    }
});

app.use(session({
    key: 'session_cookie_name',
    secret: 'session_cookie_secret',
    store: sessionStore,
    resave: false,
    saveUninitialized: false
}));

app.use(handleLayoutMDW);


//Admin
app.use('/admin',adminHomeController);
app.use('/admin/category',adminCategoryController);
app.use('/admin/orders',adminOderController);
app.use('/admin/product',adminProductController);

//User
app.use('/', userRouter);
app.use('/user', userController);
app.use('/cart',restrict, cartController);
app.use('/payment', paymentController);

app.use(handle404MDW);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});
/////////////////////////////////////////
// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});




module.exports = app;
