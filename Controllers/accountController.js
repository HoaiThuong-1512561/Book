var express = require('express');
var SHA256 = require('crypto-js/sha256');
var accountRepo = require('../repos/accountRepo');
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
            res.redirect('/');
        } else {
            var vm = {
                showError: true,
                errorMsg: 'Login failed'
            };
            res.render('account/login', vm);
        }
    });
});

router.get('/profile', restrict, (req, res) => {
    res.render('account/profile');
});

module.exports = router;