var categoryRepo = require('../repos/categoryRepo');

module.exports = (req, res, next) => {

    if (req.session.isLogged === undefined) {
        req.session.isLogged = false;
    }
    if (req.session.cart===undefined){
        req.session.cart=[];
    }

    categoryRepo.loadAll().then(rows => {
        res.locals.layoutVM = {
            categories: rows,
            suppliers: rows,
            isLogged: req.session.isLogged,
            curUser: req.session.user,
            totalCart:req.session.cart.length,
        };
        next();
    });
};