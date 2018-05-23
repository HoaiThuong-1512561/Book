var express = require('express');
var ProductRePo = require('../repos/ProductRePo');

var app = express();
var router = express.Router();

router.get('/', (req, res) => {
    var p1 = ProductRePo.searchById(req.query.id);
    var p2 = ProductRePo.loadByViews();
    Promise.all([p1,p2]).then(([newB,Views]) => {
        var vm = {
            products: newB,
            byViews:Views
        };
        res.render('sample_product', vm);
    });
});



module.exports = router;