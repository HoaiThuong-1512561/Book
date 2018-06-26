var express = require('express');
var ProductRePo = require('../repos/ProductRePo');

var app = express();
var router = express.Router();

router.get('/', (req, res) => {
    ProductRePo.searchById(req.query.id).then(rows => {
        var lx=parseInt(rows[0].luotXem)+1;
        var p1= ProductRePo.loadByKind(rows[0].idLoai);
        var p2=ProductRePo.loadByPD(rows[0].idNhaSX);
        var p3=ProductRePo.loadTheLoai(rows[0].idLoai);
        var p4=ProductRePo.updateLX(rows[0].idSach,lx);
        Promise.all([p1, p2,p3,p4]).then(([kind, products,Theloai,lx]) => {
            var vm={
                products: rows,
                kind:kind,
                nxb:products,
                tl:Theloai[0]
            }
            res.render('sample_product', vm);
        });
    });
});



module.exports = router;