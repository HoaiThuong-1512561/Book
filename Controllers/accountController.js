var express = require('express');
var SHA256 = require('crypto-js/sha256');
var moment = require('moment');

var accountRepo = require('../repos/accountRepo');
var payRepo=require('../repos/payRepo');
var restrict = require('../middle-wares/restrict');

var router = express.Router();

router.get('/register', (req, res) => {
    res.render('account/dang-ki');
});

router.post('/register', (req, res) => {
    var user = {
        username: req.body.username,
        password: SHA256(req.body.pass).toString(),
        name: req.body.fullname,
        address: req.body.address,
        phonenumber: req.body.phone,
        permission: 0,
    };

    accountRepo.check(user).then(rows => {
        if (rows.length > 0) {
            var vm = {
                showError: true,
                errorMsg: 'Đã tồn tại tài khoản này'
            };
            res.render('account/dang-ki', vm);
        } else {
            var idCustomer;
            accountRepo.addCustomer(user).then(value => {
                idCustomer = value.insertId;
                accountRepo.addUser(user, idCustomer).then(value => {
                    var vm = {
                        Success: true,
                        Msg: 'Đăng kí thành công'
                    };
                    res.render('index');
                });
            });
        }
    });
});

router.get('/login', (req, res) => {
    res.render('account/dang-nhap');
});

router.post('/login', (req, res) => {
    var user = {
        username: req.body.username,
        password: SHA256(req.body.pass).toString()
    };
    accountRepo.login(user).then(rows => {
        if (rows.length > 0) {
            req.session.isLogged = true;
            req.session.user = rows[0];
            req.session.cart = [];
             // res.redirect('/');
            var url = '/';
            if (req.query.retUrl) {
                url = req.query.retUrl;
            }
            res.redirect(url);

        } else {

            var vm = {
                showError: true,
                errorMsg: 'Tên hoặc mật khẩu không đúng.',
               // layoutVM: res.locals.layoutVM,
            };


            res.render('account/dang-nhap', vm);
        }
    });
});

router.get('/profile', restrict, (req, res) => {
    var idCus=req.session.user.idNguoiSuDung;

    var p1=payRepo.getPayment(idCus);
    var p2=accountRepo.getCus(idCus);

    Promise.all([p1, p2]).then(([pay, account]) => {
        var vm={
            donHang:pay,
            name:account[0].hoTen,
            diachi: account[0].diaChi,
            sdt: account[0].soDT,
        }
        res.render('account/profile',vm);
        
    });

    // accountRepo.getCus(idCus).then(rows=>{
    //     var vm={
    //         name:rows[0].hoTen,
    //         diachi: rows[0].diaChi,
    //         sdt: rows[0].soDT,
    //     }
    //     console.log(vm);
    //     res.render('account/profile',vm);
    // });
});

router.get('/edit-info',(req,res)=>{
    var idCus=req.session.user.idNguoiSuDung;
    accountRepo.getCus(idCus).then(rows=>{
        var vm={
            name:rows[0].hoTen,
            diachi: rows[0].diaChi,
            sdt: rows[0].soDT
        }
        res.render('account/sua-tt',vm);
    });
});
router.post('/edit-info',(req,res)=>{
    var user = {
        hoten: req.body.name,
        sdt: req.body.phonenumber,
        diachi:req.body.address,
        idCus:req.session.user.idNguoiSuDung
    };
    var p1=accountRepo.updateNameCus(user);
    var p2=accountRepo.updatePhoneCus(user);
    var p3=accountRepo.updateAddressCus(user);

    Promise.all([p1, p2, p3]).then(([value1, value2, value3]) => {
        res.redirect('edit-info');
    });
});

router.post('/logout', (req, res) => {
    req.session.isLogged = false;
    req.session.user = null;
    //req.session.cart = [];
    res.redirect(req.headers.referer);
});

router.get('/order',(req,res)=>{
    res.render('account/chi-tiet-dh');
});
module.exports = router;