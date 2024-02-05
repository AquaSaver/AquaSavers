import 'package:AquaSavers/core/class/crud.dart';
import 'package:AquaSavers/linkApi.dart';

class EmplymentData {
  Crud crud;
  EmplymentData(this.crud);
  employment(Map data) async {
    var response = await crud.postData(StoreLink.employment, data);
    return response.fold((l) => l, (r) => r);
  }
}