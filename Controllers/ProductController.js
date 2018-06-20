var express = require('express');
var ProductRePo = require('../repos/ProductRePo');

var app = express();
var router = express.Router();

router.get('/', (req, res) => {
    ProductRePo.searchById(req.query.id).then(rows => {
        var p1= ProductRePo.loadByKind(rows[0].idLoai);
        var p2=ProductRePo.loadByPD(rows[0].idNhaSX);

        Promise.all([p1, p2]).then(([kind, products]) => {
            var vm={
                products: rows,
                kind:kind,
                nsb:products
            }
            res.render('sample_product', vm);
        });
    });
});



module.exports = router;