var express = require('express');
var router = express.Router();
var products = require('../controller/products.controller');
/* GET home page. */


router.get('/demo',products.getAllProducts);


module.exports = router;