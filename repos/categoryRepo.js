/**
 * Created by tutrinh on 6/2/18.
 */
var db = require('../fn/db');

exports.loadAll = () => {
    var sql = 'select * from categories';
    return db.load(sql);
};


