import 'package:AquaSavers/data/datasource/remote/qrprizedata_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/StatusRequest.dart';
import 'package:AquaSavers/core/class/myservices.dart';

import '../../functions/handlingDatacontroller.dart';

class Prizecontroller extends GetxController {
  QrPrizeData prizeData = Get.put(QrPrizeData(Get.find()));
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;
  String coupondis = "Coupon";

///////////////
  tendiscouponn() async {
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "coupon": coupondis.toString(),
    
    };

    var response = await prizeData.tendiscoupon(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "10% Discount Coupon successfully sent",
            backgroundColor: Colors.black, colorText: Colors.white);
      } else {
        // statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }

  ///////////////////////////////
   twenticouponn() async {
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "coupon": coupondis.toString(),
    
    };

    var response = await prizeData.twentidiscoupon(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "20% Discount Coupon successfully sent",
            backgroundColor: Colors.black, colorText: Colors.white);
      } else {
        // statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }

  ///////////////////////////
   fiftydiscouponn() async {
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "coupon": coupondis.toString(),
    
    };

    var response = await prizeData.fiftydiscoupon(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "50% Discount Coupon successfully sent",
            backgroundColor: Colors.black, colorText: Colors.white);
      } else {
        // statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }


  /////////////////////////////
   seventydiscouponn() async {
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "coupon": coupondis.toString(),
    
    };

    var response = await prizeData.seventydiscoupon(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "70% Discount Coupon successfully sent",
            backgroundColor: Colors.black, colorText: Colors.white);
      } else {
        // statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }


  ////////////////////////////////////////////
  
  @override
  void onInit() {
    // price = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    // price.dispose();
    super.dispose();
  }
}
