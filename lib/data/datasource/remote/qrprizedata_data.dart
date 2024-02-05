import 'package:AquaSavers/core/class/crud.dart';
import 'package:AquaSavers/linkApi.dart';

class QrPrizeData {
  Crud crud;
  QrPrizeData(this.crud);
  tendiscoupon(Map data) async {
    var response = await crud.postData(StoreLink.tendiscountprize, data);
    return response.fold((l) => l, (r) => r);
  } twentidiscoupon(Map data) async {
    var response = await crud.postData(StoreLink.twentydiscountprize, data);
    return response.fold((l) => l, (r) => r);
  } fiftydiscoupon(Map data) async {
    var response = await crud.postData(StoreLink.fiftydiscountprize, data);
    return response.fold((l) => l, (r) => r);
  } seventydiscoupon(Map data) async {
    var response = await crud.postData(StoreLink.seventydiscountprize, data);
    return response.fold((l) => l, (r) => r);
  }
}