var express = require('express');
var ProductRePo = require('../repos/ProductRePo');

var app = express();
var router = express.Router();

router.get('/', (req, res) => {
    var p1 = ProductRePo.searchById(req.query.id);
    Promise.all([p1]).then(([newB]) => {
        var vm = {
            products: newB,
        };
        res.render('sample_product', vm);
    });
});



module.exports = router;