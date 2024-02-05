import 'package:AquaSavers/core/class/crud.dart';
import 'package:AquaSavers/linkApi.dart';

class SellingData {
  Crud crud;
  SellingData(this.crud);
  sellwaterhuge(Map data) async {
    var response = await crud.postData(StoreLink.sellwaterhuge, data);
    return response.fold((l) => l, (r) => r);
  } sellwatersmall(Map data) async {
    var response = await crud.postData(StoreLink.smallwater, data);
    return response.fold((l) => l, (r) => r);
  } sellwatermid(Map data) async {
    var response = await crud.postData(StoreLink.midwater, data);
    return response.fold((l) => l, (r) => r);
  } sellwateronehalf(Map data) async {
    var response = await crud.postData(StoreLink.onehalfwater, data);
    return response.fold((l) => l, (r) => r);
  }
  sellorganicfruits(Map data) async {
    var response = await crud.postData(StoreLink.sellorganic, data);
    return response.fold((l) => l, (r) => r);
  }
   sellorganicveg(Map data) async {
    var response = await crud.postData(StoreLink.sellorganicveg, data);
    return response.fold((l) => l, (r) => r);
  }
    sellplate(Map data) async {
    var response = await crud.postData(StoreLink.sellplate, data);
    return response.fold((l) => l, (r) => r);
  }
    sellvase(Map data) async {
    var response = await crud.postData(StoreLink.sellvase, data);
    return response.fold((l) => l, (r) => r);
  }
    selltajin(Map data) async {
    var response = await crud.postData(StoreLink.selltajin, data);
    return response.fold((l) => l, (r) => r);
  }
}