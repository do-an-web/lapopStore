var db = require('../fn/db');
var config = require('../config/config');


exports.loadAll = () => {
    var sql = 'select * from products';
    return db.load(sql);
}
exports.loadAllBrands = () => {
    var sql = 'select * from categories';
    return db.load(sql);
}
exports.getIDBrandsByCatName = (CatName) => {
    var sql = `select * from categories where CatName = '${CatName}'`;
    return db.load(sql);
}
exports.loadSameBrandsByCat = (catId) => {
    var sql = `select * from products where CatId = ${catId} limit 6 offset 0`;
    return db.load(sql);
}
exports.loadAllByPro = (offset) => {
    var sql = `select * from products limit ${config.PRODUCTS_PER_PAGE} offset ${offset}`;
    return db.load(sql);
}
exports.loadAllByCat = (catId,offset) => {
    var sql = `select * from products where CatID = ${catId} limit ${config.PRODUCTS_PER_PAGE} offset ${offset}`;
    return db.load(sql);
}
exports.loadAllByCatName = (CatName,offset) => {
    var sql = `select * from products where Factory = '${CatName}' limit ${config.PRODUCTS_PER_PAGE} offset ${offset}`;
    return db.load(sql);
}
exports.countByCat = () => {
    var sql = `select count(*) as total from products`;
    return db.load(sql);
}
exports.countByCatBrands = (catId) => {
    var sql = `select count(*) as total from products where CatID = ${catId}`;
    return db.load(sql);
}
exports.countByCatNameBrands = (CatName) => {
    var sql = `select count(*) as total from products where factory = '${CatName}'`;
    return db.load(sql);
}
exports.single = ProID => {
    var sql = `select * from products where ProID = ${ProID}`;
    return db.load(sql);
}
exports.updateQuantityProduct = (ProID, Quantity, Selled, QuantitySell) => {
    var sql = `UPDATE products set Quantity=${Quantity}-${QuantitySell}, Selled = ${QuantitySell}+${Selled} WHERE ProID = ${ProID}`;
    return db.save(sql);
}