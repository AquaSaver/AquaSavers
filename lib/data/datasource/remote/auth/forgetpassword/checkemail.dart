import 'package:AquaSavers/core/class/crud.dart';
import 'package:AquaSavers/linkApi.dart';

class CheckEmailData {
  Crud crud;

  CheckEmailData(this.crud);

  postdata(String email) async {
    var response = await crud.postData(AppLink.checkmail, {
     
       "email":email,

    });
    return response.fold((l) => l, (r) => r);
  }
}
