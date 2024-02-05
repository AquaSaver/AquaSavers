import 'package:AquaSavers/core/class/crud.dart';
import 'package:AquaSavers/linkApi.dart';

class VerifyCodeSignupData {
  Crud crud;

  VerifyCodeSignupData(this.crud);

  postdata(String email,String verifycode) async {
    var response = await crud.postData(AppLink.verifyCodeSignup, {
     
       "email":email,
       "verifycode":verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
