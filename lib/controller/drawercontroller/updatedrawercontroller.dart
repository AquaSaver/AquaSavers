import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/StatusRequest.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/functions/handlingDatacontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_customs/Customs/customPhoneForm/country_list.dart';
import 'package:get/get.dart';

import '../../data/datasource/remote/auth/resetupdate.dart';

class updatecontroller extends GetxController {
  MyServices myServices = Get.find();
  late TextEditingController phonenum;
    late TextEditingController phone;
    late TextEditingController username;

  String? email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  CountryListController countryListController = Get.find<CountryListController>();

  ResetData resetData = ResetData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  updatedata() async {
        phonenum.text = countryListController.selectedCountryCode + phone.text;

    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetData.postdata(email!,username.text,phonenum.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.drawerprofile);
        } else {
          Get.defaultDialog(title: "ُWarning", middleText: "Try Again");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() { username = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    phonenum = TextEditingController();
    email = myServices.sharedPreferences.getString("email");
    
    super.onInit();
  }
 @override
  void dispose() {
    username.dispose();
    phone.dispose();
    phonenum.dispose();
    super.dispose();
  }
}
