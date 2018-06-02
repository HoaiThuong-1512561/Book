/**
 * Created by tutrinh on 6/2/18.
 */
var express = require('express');
var categoryRepo = require('../repos/categoryRepo');

var router = express.Router();


router.get('/', (req, res) => {
    categoryRepo.loadAll().then(rows => {
        var vm = {
            categories: rows
        };
        res.render('tim-kiem', vm);
    });
});



module.exports = router;