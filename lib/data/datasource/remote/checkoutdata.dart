import 'package:AquaSavers/core/class/crud.dart';
import 'package:AquaSavers/linkApi.dart';

class CheckoutData {
  Crud crud;
  CheckoutData(this.crud);
  checkout(Map data) async {
    var response = await crud.postData(StoreLink.checkout, data);
    return response.fold((l) => l, (r) => r);
  }
}