import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/StatusRequest.dart';
import 'package:AquaSavers/data/datasource/remote/auth/signup.dart';
import 'package:AquaSavers/functions/handlingDatacontroller.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
 // CountryListController countryListController = Get.find<CountryListController>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController phonenum;
  String? region;

  bool isshowpassword = true;
  StatusRequest statusRequest = StatusRequest.none;

  

  SignupData signupData = SignupData(Get.find());

  List data = [];
   chooseregion(String val) {
    region = val;
    update();
  }
showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
  @override
  signUp() async {

   // phonenum.text = countryListController.selectedCountryCode + phone.text;
   // print(countryListController.selectedCountryCode);
    if (formstate.currentState!.validate()) {
       if (region == null) {
      return Get.snackbar("Error", "Please select your Region");
    }
     if (region == "Region") {
      return Get.snackbar("Error", "Please select your Region");
    }
      statusRequest = StatusRequest.loading;
      update();

      var response = await signupData.postdata(
          username.text, password.text, email.text, phone.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verfiyCodeSignUp,
              arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "Phone Number Or Email Already Exists");
          //  statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phonenum = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    phonenum.dispose();
    super.dispose();
  }
}
