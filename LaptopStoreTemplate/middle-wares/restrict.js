module.exports = (req, res, next) => {
    if (req.session.isLogged === true) {
        next();
    } else {
        res.redirect(`/user/signin?retUrl=${req.originalUrl}`);
    }
}