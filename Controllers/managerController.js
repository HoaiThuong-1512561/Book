var express = require('express');
var restrict = require('../middle-wares/restrictManager');
var categoryRepo = require('../repos/categoryRepo');
var payRepo = require('../repos/payRepo');
var router = express.Router();

router.get('/dashboard', restrict, (req, res) => {
    res.render('manager/dashboard');
});
router.get('/theloai', restrict, (req, res) => {
    categoryRepo.loadAllKind().then(rows => {
        var vm = {
            theloai: rows
        };
        res.render('manager/qly-loaisp', vm);
    });
});
router.get('/nxb', restrict, (req, res) => {
    categoryRepo.loadAllPD().then(rows => {
        var vm = {
            nxb: rows
        };
        res.render('manager/qly-nhasx', vm);
    });
});
router.get('/don-hang', restrict, (req, res) => {
    payRepo.getAllPayment().then(rows => {
        var vm = {
            donhang: rows
        }

        res.render('manager/qly-donhang', vm);
    });
});

router.post('/theloai', (req, res) => {
    categoryRepo.updateLoai(req.body.idLoai, req.body.tenLoai).then(rows=>{
        categoryRepo.loadAllKind().then(rows => {
            var vm = {
                showMsg: true,
                Msg: 'Cập nhật thành công!',
                theloai: rows
            };
            res.render('manager/qly-loaisp', vm);
        })
    });

});
router.get('/theloai/add',restrict,(req,res)=>{
    res.render('manager/add/addLoai');
});
router.post('/theloai/add',(req,res)=>{
    categoryRepo.addLoai(req.body.tenLoai);
    var vm = {
        showMsg: true,
        Msg: 'Thêm thành công!',
    };
    res.render('manager/add/addLoai',vm);
});
router.post('/don-hang', (req, res) => {
    console.log(req.body.idThanhToan);
    console.log(req.body.select);
    payRepo.updateTrangThaiDH(req.body.idThanhToan, req.body.select);
    res.redirect('don-hang');
});

router.post('/nxb', (req, res) => {
    
    categoryRepo.updateNXB(req.body.idNhaSX, req.body.tenNhaSX).then(rows=>{
        categoryRepo.loadAllPD().then(rows => {
            var vm = {
                showMsg: true,
                Msg: 'Cập nhật thành công!',
                nxb: rows
            };
            res.render('manager/qly-nhasx', vm);
        })
    });

});
router.get('/nxb/add',restrict,(req,res)=>{
    res.render('manager/add/addNXB');
});
router.post('/nxb/add',(req,res)=>{
    categoryRepo.addNXB(req.body.tenNXB);
    var vm = {
        showMsg: true,
        Msg: 'Thêm thành công!',
    };
    res.render('manager/add/addNXB',vm);
});

module.exports = router;