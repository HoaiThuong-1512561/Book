/**
 * Created by tutrinh on 5/11/18.
 */
var db = require('../fn/db');

exports.loadAll = () => {
    var sql = 'select * from Book,NhaSX,Loai where Book.idNhaSX=NhaSX.idNhaSX and Book.idLoai=Loai.idLoai';
    return db.load(sql);
}
// inner join NhaSX on Book.idNhaSX = NhaSX=idNhaSX
exports.single = (id) => {
    return new Promise((resolve, reject) => {
        var sql = `select * from Book,NhaSX,Loai where idSach = ${id} and Book.idNhaSX=NhaSX.idNhaSX and Book.idLoai=Loai.idLoai`;
        db.load(sql).then(rows => {
            if (rows.length === 0) {
                resolve(null);
            } else {
                resolve(rows[0]);
            }
        }).catch(err => {
            reject(err);
        });
    });
};


exports.add = (c) => {
    var sql = `insert into Book(ten_sach,tac_gia,giaBan,idNhaSX,idLoai) values('${c.ten_sach}','${c.tac_gia}','${c.giaBan}','${c.idNhaSX}','${c.idLoai}')`;
    return db.save(sql);
};

exports.delete = (id) => {
    var sql = `delete from Book where idSach = ${id}`;
    return db.save(sql);
};

exports.update = (c) => {
    var sql = `update Book set tac_gia = '${c.tac_gia}',ten_sach = '${c.ten_sach}',
    								
    								giaBan ='${c.giaBan}' ,
    								idNhaSX = '${c.idNhaSX}',
    								idLoai = '${c.idLoai}'
    								
    								 where idSach = ${c.idSach}`;
    // console.log(sql);


    return db.save(sql);
};


