import 'package:AquaSavers/core/class/crud.dart';
import 'package:AquaSavers/linkApi.dart';

class CartData {
  Crud crud;
  CartData(this.crud);
  addCart(int usersid, int itemsid) async {
     var response = await crud.postData(
        StoreLink.cartadd, {"usersid": usersid.toString(), "itemsid": itemsid.toString()});
    return response.fold((l) => l, (r) => r);
  }

  deleteCart(int usersid, int itemsid) async {
    var response = await crud.postData(
        StoreLink.cartdelete, {"usersid": usersid.toString(), "itemsid": itemsid.toString()});
    return response.fold((l) => l, (r) => r);
  }

  getCountCart(int usersid, int itemsid) async {
    var response = await crud.postData(
        StoreLink.cartgetcountitems, {"usersid": usersid.toString(), "itemsid": itemsid.toString()});
    return response.fold((l) => l, (r) => r);
  }

  viewCart(int usersid) async {
    var response = await crud.postData(StoreLink.cartview, {
      "usersid": usersid.toString(),
    });
    return response.fold((l) => l, (r) => r);
  }
  checkCoupon(String couponname) async {
var response = await crud.postData(StoreLink.checkcoupon, {
      "couponname": couponname.toString(),
    });
    return response.fold((l) => l, (r) => r);
  }
}
