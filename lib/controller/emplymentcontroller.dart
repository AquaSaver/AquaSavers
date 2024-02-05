import 'package:AquaSavers/data/datasource/remote/employment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/StatusRequest.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/data/model/AddressModel.dart';

import '../../data/datasource/remote/addressdata.dart';
import '../../functions/handlingDatacontroller.dart';

class EmploymentController extends GetxController {
  AddressData addressData = Get.put(AddressData(Get.find()));
  EmplymentData emplymentData = Get.put(EmplymentData(Get.find()));

  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;
String? age;
  String? certificate;
    String? experience;


  int? addressid;


  List<AddressModel> dataaddress = [];

  chooseage(String val) {
    age = val;
    update();
  }
choosecertificate(String val) {
    certificate = val;
    update();
  }
  chooseexperiance(String val) {
    experience = val;
    update();
  }

  chooseShippingAddress(int val) {
    addressid = val;
    update();
  }

  getShippingAddress() async {
    statusRequest = StatusRequest.loading;

    var response =
        await addressData.getData(myServices.sharedPreferences.getInt("id")!);

    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        dataaddress.addAll(listdata.map((e) => AddressModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.success;
      }
      // End
    }
    update();
  }

  employment() async {
   if (age == null) {
      return Get.snackbar("Error", "Please select your age");
    }
 if (certificate == null) {
      return Get.snackbar("Error", "Please select your certificate");
    }
    if (experience == null) {
      return Get.snackbar("Error", "Please select your experience");
    }
  if (addressid == null) {
      return Get.snackbar("Error", "Please select address");
    }
     if (age == "Age") {
      return Get.snackbar("Error", "Please select your age");
    }
     if (certificate == "Certificate") {
      return Get.snackbar("Error", "Please select your age");
    }
     if (experience == "Experience") {
      return Get.snackbar("Error", "Please select your age");
    }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
    //"addressid": myServices.sharedPreferences.getString("username").toString(),
      "addressid": addressid.toString(),
      "email":  myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "certificate": certificate.toString(),
     "age": age.toString(),
     "experience": experience.toString(),
    };

    var response = await emplymentData.employment(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "the request added successfully",backgroundColor:Colors.black,
        colorText: Colors.white
       );
      } else {
        statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }

  @override
  void onInit() {

    getShippingAddress();
    super.onInit();
  }
  @override
   void dispose() {
  
    super.dispose();
  }
}
