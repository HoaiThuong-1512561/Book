/**
 * Created by tutrinh on 6/3/18.
 */
var express = require('express');
var cartRepo = require('../repos/cartRepo'),
    productRepo = require('../repos/ProductRepo'),
    accountRepo=require('../repos/accountRepo');
var router = express.Router();
router.get('/', (req, res) => {
    accountRepo.getCus(req.session.user.idNguoiSuDung).then(rows=>{
        var vm = {
            items: req.session.cart,
            total: cartRepo.getTotal(req.session.cart),
            isEmpty: req.session.cart.length === 0,
            diaChi:rows[0].diaChi,
            SDT:rows[0].soDT,
        };
        res.render('cart/index', vm);
    });
});

router.post('/', (req, res) => {
    cartRepo.remove(req.session.cart, req.body.idSach);
    var vm = {
        items: req.session.cart,
        total: cartRepo.getTotal(req.session.cart),
        isEmpty: req.session.cart.length === 0,
    };
    res.render('cart/index', vm);

});



router.post('/add', (req, res) => {
    productRepo.loadDetail(req.body.idSach).then(rows => {
        var item = {
            idSach: req.body.idSach,
            ten_sach: rows[0].ten_sach,
            giaBan: rows[0].giaBan,
            hinh: rows[0].hinhAnh,
            sl: +req.body.sl,
            amount: rows[0].giaBan * +req.body.sl
        };
        cartRepo.add(req.session.cart, item);
        // res.redirect(req.headers.referer);
        res.redirect('/sample_product/?id=' + req.body.idSach);
    });
});


//
// router.post('/remove', (req, res) => {
//     cartRepo.remove(req.session.cart, req.body.ProId);
//     res.redirect(req.headers.referer);
// });

module.exports = router;