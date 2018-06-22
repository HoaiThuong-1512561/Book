/**
 * Created by tutrinh on 6/2/18.
 */
var db = require('../fn/db');

exports.loadAll = () => {
    var sql = `select * from categories`;
    return db.load(sql);

};
exports.loadAllLoai = () => {
    var sql = `select * from loai`;
    return db.load(sql);

};
exports.loadAllBook = () => {
    var sql = `select * from book`;
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


exports.load_by_idLoai = (id) => {
    var sql = `Select* from Book where idLoai = ${id}`;
    return db.load(sql);
}

exports.load_by_idNhaSX = (id) => {
    var sql = `Select* from Book where idNhaSX = ${id}`;
    return db.load(sql);
}
