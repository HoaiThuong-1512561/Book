var db = require('../fn/db');

exports.searchById = (id) => {
    var sql = `Select* from Book where idSach = ${id}`;
    return db.load(sql);
}
exports.loadByViews = () => {
    var sql = `select * from Book order by luotXem desc limit ${10} offset ${0}`;
    return db.load(sql);
}
exports.single = idSach => {
    var sql = `select * from Book where idSach = ${idSach}`;
    return db.load(sql);
}
exports.loadDetail = (idSach)=> {

    var sql = `Select* from Book where idSach = ${idSach}`;

    return db.load(sql);

}