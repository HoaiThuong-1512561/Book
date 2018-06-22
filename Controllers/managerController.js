var express = require('express');
var restrict = require('../middle-wares/restrictManager');
var categoryRepo = require('../repos/categoryRepo');
var router = express.Router();

router.get('/dashboard', restrict, (req, res) => {
    res.render('manager/dashboard');
});
router.get('/theloai', restrict, (req, res) => {
    categoryRepo.loadAllKind().then(rows => {
        var vm = {
            theloai: rows
        };
        res.render('manager/qly-loaisp',vm);
    });
});
router.get('/nxb', restrict, (req, res) => {
    categoryRepo.loadAllPD().then(rows => {
        var vm = {
            nxb: rows
        };
        res.render('manager/qly-nhasx',vm);
    });
});

module.exports = router;