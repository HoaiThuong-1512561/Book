var express = require('express');
var HomeRePo = require('../repos/HomeRePo');
var categoryRepo = require('../repos/categoryRepo');

var app = express();
var router = express.Router();

var p1 = HomeRePo.loadNewBook();
var p2 = HomeRePo.loadBestSale();
var p3 = HomeRePo.loadByViews();
let menu=categoryRepo.loadAllKind();
let nxb=categoryRepo.loadAllPD();
router.get('/', (req, res) => {

    Promise.all([p1, p2, p3,menu,nxb]).then(([newB, bestS, Views,menu,nxb]) => {

        var vm = {
            newBook: newB,
            bestSaleBook: bestS,
            byViews: Views,
            categories: menu,
            nxb:nxb
        };
        res.render('index', vm);
    });
});



module.exports = router;