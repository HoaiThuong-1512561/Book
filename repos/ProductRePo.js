var db = require('../fn/db');

exports.searchById = (id) => {
    var sql = `Select* from Book where idSach = ${id}`;
    return db.load(sql);
}
