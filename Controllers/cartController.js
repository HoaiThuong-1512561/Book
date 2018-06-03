/**
 * Created by tutrinh on 6/3/18.
 */
var express = require('express');
var cartRepo = require('../repos/cartRepo'),
    productRepo = require('../repos/ProductRepo');

var router = express.Router();
router.get('/', (req, res) => {
        var vm = {
            items: req.session.cart,
            total: cartRepo.getTotal(req.session.cart),
            isEmpty: req.session.cart.length === 0,
        };
        res.render('cart/index', vm);
});




router.post('/add', (req, res) => {
    productRepo.loadDetail(req.body.idSach).then(function(pro) {

        var item = {
            product: {
                idSach: pro.idSach,
                // ten_sach: pro.ten_sach,
                // giaBan: pro.giaBan,
            },
            sl: +req.body.sl,
            amount: pro.idSach * +req.body.sl
        };

});
    cartRepo.add(req.session.cart, item);
     // res.redirect(req.headers.referer);
    res.redirect('/sample_product/' + req.body.idSach);
});


//
// router.post('/remove', (req, res) => {
//     cartRepo.remove(req.session.cart, req.body.ProId);
//     res.redirect(req.headers.referer);
// });

module.exports = router;