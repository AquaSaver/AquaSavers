import 'package:AquaSavers/core/class/crud.dart';
import 'package:AquaSavers/linkApi.dart';


class ItemsData {
  
  Crud crud ; 

  ItemsData(this.crud) ; 

  getData(int id) async {
    var response = await crud.postData(StoreLink.items, {"id":  id.toString()});
    return response.fold((l) => l, (r) => r) ; 
  }


}