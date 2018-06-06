/**
 * Created by tutrinh on 6/3/18.
 */
exports.add = (cart, item) => {
    for (i = cart.length - 1; i >= 0; i--) {
        if (cart[i].idSach === item.idSach) {
            cart[i].sl += item.sl;
            return;
        }
    }
    console.log(item);
    cart.push(item);
};
exports.remove=(cart, idSach) => {
    for (i = cart.length - 1; i >= 0; i--) {
        if (cart[i].idSach===idSach){
            cart.splice(i,1);
            return;
        }
    }
};
exports.getTotal = function (cart) {
    var total = 0;
    for (var i = 0; i < cart.length; i++) {
        total += cart[i].amount;
    }
    return total;
}

// exports.remove = (cart, proId) => {
//     for (var i = cart.length - 1; i >= 0; i--) {
//         if (proId === cart[i].ProId) {
//             cart.splice(i, 1);
//             return;
//         }
//     }
// };
