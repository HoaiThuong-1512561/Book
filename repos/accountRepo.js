var db = require('../fn/db');

exports.addCustomer = user => {
    var sql = `insert into KhachHang(hoTen, diaChi, soDT) values('${user.name}', '${user.address}', '${user.phonenumber}')`;
    return db.save(sql);
};

exports.addUser = (user,idCus) => {
    console.log(idCus);
    var sql = `insert into NguoiDung(userName, pass, loaiNguoiDung, idNguoiSuDung) values('${user.username}', '${user.password}', '${user.permission}', ${idCus})`;
    return db.save(sql);
};

exports.login = user => {
    var sql = `select * from NguoiDung where userName = '${user.username}' and pass = '${user.password}'`;
    return db.load(sql);
};

exports.check = user => {
    var sql = `select * from NguoiDung where userName = '${user.username}'`;
    return db.load(sql);
};