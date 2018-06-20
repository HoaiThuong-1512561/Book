/**
 * Created by tutrinh on 6/2/18.
 */
var db = require('../fn/db');

exports.loadAll = () => {
    var sql = 'select * from categories';
    return db.load(sql);
};

exports.loadAllKind = () => {
    var sql = 'select * from Loai';
    return db.load(sql);
};
exports.loadAllPD = () => {
    var sql = 'select * from NhaSX';
    return db.load(sql);
};



