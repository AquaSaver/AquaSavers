import 'package:AquaSavers/core/class/crud.dart';
import 'package:AquaSavers/linkApi.dart';


class StoreHomeData {
  
  Crud crud ; 

  StoreHomeData(this.crud) ; 

  getData() async {
    var response = await crud.postData(StoreLink.storehome, {});
    return response.fold((l) => l, (r) => r) ; 
  }
 SearchData(String search) async {
    var response = await crud.postData(StoreLink.search, {"search" : search});
    return response.fold((l) => l, (r) => r) ; 
  }


}