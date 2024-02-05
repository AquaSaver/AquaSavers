import 'package:AquaSavers/data/datasource/remote/selling.dart';
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

class FormController extends GetxController {
  AddressData addressData = Get.put(AddressData(Get.find()));
  SellingData waterData = Get.put(SellingData(Get.find()));
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;
  String? typeor;
  String? specialtype;
  String? specialtypeveg;
  String? potterytype;

  String? watersize;
  int? pricesmall;
  int? pricemid;
  int? priceonehalflitre;
  int? pricehuge;
  int? priceplate;
  int? pricevase;
  int? pricetajin;

  int countitemssmall = 1;
  int countitemsmid = 1;
  int countitemshuge = 1;
  int countitemsoneandhalf = 1;
  int countitemsorfruits = 1;
  int countitemsorveg = 1;
  int countitemsplate = 1;
  int countitemsvase = 1;
  int countitemstajin = 1;

  int? addressid;

  List<AddressModel> dataaddress = [];

  chooseage(String val) {
    watersize = val;
    update();
  }
 choosepottery(String val) {
    potterytype = val;
    update();
  }
  choosetype(String val) {
    typeor = val;
    update();
  }

  choosespecial(String val) {
    specialtype = val;
    update();
  }

  //////////////////
  chooseShippingAddress(int val) {
    addressid = val;
    update();
  }
////////////
 choosepriceplate(int val) {
    priceplate = val;
    update();
  }

  addsplate() {
    countitemsplate++;
    update();
  }

  removeplate() {
    if (countitemsplate > 0) {
      countitemsplate--;
      update();
    }
  }

///////////////////////////
 choosepricetajin(int val) {
    pricetajin = val;
    update();
  }

  addstajin() {
    countitemstajin++;
    update();
  }

  removetagin() {
    if (countitemstajin > 0) {
      countitemstajin--;
      update();
    }
  }
////////////////////////////
 choosepricevase(int val) {
    pricevase = val;
    update();
  }

  addsvase() {
    countitemsvase++;
    update();
  }

  removevase() {
    if (countitemsvase > 0) {
      countitemsvase--;
      update();
    }
  }

///

  choosepricesmall(int val) {
    pricesmall = val;
    update();
  }

  addssmall() {
    countitemssmall++;
    update();
  }

  removesmall() {
    if (countitemssmall > 0) {
      countitemssmall--;
      update();
    }
  }

  ////////////////////
  ///
  choosepricemid(int val) {
    pricemid = val;
    update();
  }

  addsmid() {
    countitemsmid++;
    update();
  }

  removemid() {
    if (countitemsmid > 0) {
      countitemsmid--;
      update();
    }
  }

  ////////////////////////
  choosepricehuge(int val) {
    pricehuge = val;
    update();
  }

  addshuge() {
    countitemshuge++;
    update();
  }

  removehuge() {
    if (countitemshuge > 0) {
      countitemshuge--;
      update();
    }
  }

  //////////////
  choosepriceonehalf(int val) {
    priceonehalflitre = val;
    update();
  }

  addsonehalf() {
    countitemsoneandhalf++;
    update();
  }

  removeonehalf() {
    if (countitemsoneandhalf > 0) {
      countitemsoneandhalf--;
      update();
    }
  }

  //////////////
  addsorganicfruit() {
    countitemsorfruits++;
    update();
  }

  removeorganicfruit() {
    if (countitemsorfruits > 0) {
      countitemsorfruits--;
      update();
    }
  }

  /////////////////
  addorganicveg() {
    countitemsorveg++;
    update();
  }

  removeorganicveg() {
    if (countitemsorveg > 0) {
      countitemsorveg--;
      update();
    }
  }

  ////////////////
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
////////////////////////////
sellvase() async {
    if (potterytype == null) {
      return Get.snackbar("Error", "Please select the type");
    }
    if (addressid == null) {
      return Get.snackbar("Error", "Please select address");
    }
    if (potterytype == "Pottery Shapes") {
      return Get.snackbar("Error", "Please select the Pottery Shapes");
    }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      //"addressid": myServices.sharedPreferences.getString("username").toString(),
      "addressid": addressid.toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "potterytype": potterytype.toString(),
      "totalprice": pricevase.toString(),
            "counter": countitemsplate.toString(),

    };

    var response = await waterData.sellvase(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "the request added successfully",
            backgroundColor: Colors.black, colorText: Colors.white);
      } else {
        // statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }
///////////////
sellplate() async {
    if (potterytype == null) {
      return Get.snackbar("Error", "Please select the type");
    }
    if (addressid == null) {
      return Get.snackbar("Error", "Please select address");
    }
    if (potterytype == "Pottery Shapes") {
      return Get.snackbar("Error", "Please select the Pottery Shapes");
    }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      //"addressid": myServices.sharedPreferences.getString("username").toString(),
      "addressid": addressid.toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "potterytype": potterytype.toString(),
      "totalprice": priceplate.toString(),
            "counter": countitemsplate.toString(),

    };

    var response = await waterData.sellplate(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "the request added successfully",
            backgroundColor: Colors.black, colorText: Colors.white);
      } else {
        // statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }
  ////////////////////
  selltagin() async {
    if (potterytype == null) {
      return Get.snackbar("Error", "Please select the type");
    }
    if (addressid == null) {
      return Get.snackbar("Error", "Please select address");
    }
    if (potterytype == "Pottery Shapes") {
      return Get.snackbar("Error", "Please select the Pottery Shapes");
    }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      //"addressid": myServices.sharedPreferences.getString("username").toString(),
      "addressid": addressid.toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "potterytype": potterytype.toString(),
      "totalprice": pricetajin.toString(),
            "counter": countitemstajin.toString(),

    };

    var response = await waterData.selltajin(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "the request added successfully",
            backgroundColor: Colors.black, colorText: Colors.white);
      } else {
        // statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }
/////////////
  sellwatersmall() async {
    if (watersize == null) {
      return Get.snackbar("Error", "Please select the WaterSize");
    }
    if (addressid == null) {
      return Get.snackbar("Error", "Please select address");
    }
    if (watersize == "Bottles Size") {
      return Get.snackbar("Error", "Please select the WaterSize");
    }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      //"addressid": myServices.sharedPreferences.getString("username").toString(),
      "addressid": addressid.toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "watersize": watersize.toString(),
      "waterprice": pricesmall.toString(),
      "nobottles": countitemssmall.toString(),
    };

    var response = await waterData.sellwatersmall(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "the request added successfully",
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
  sellwateronehalf() async {
    if (watersize == null) {
      return Get.snackbar("Error", "Please select the WaterSize");
    }
    if (addressid == null) {
      return Get.snackbar("Error", "Please select address");
    }
    if (watersize == "Bottles Size") {
      return Get.snackbar("Error", "Please select the WaterSize");
    }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      //"addressid": myServices.sharedPreferences.getString("username").toString(),
      "addressid": addressid.toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "watersize": watersize.toString(),
      "waterprice": priceonehalflitre.toString(),
      "nobottles": countitemsoneandhalf.toString(),
    };

    var response = await waterData.sellwateronehalf(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "the request added successfully",
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
  sellwatermid() async {
    if (watersize == null) {
      return Get.snackbar("Error", "Please select the WaterSize");
    }
    if (addressid == null) {
      return Get.snackbar("Error", "Please select address");
    }
    if (watersize == "Bottles Size") {
      return Get.snackbar("Error", "Please select the WaterSize");
    }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      //"addressid": myServices.sharedPreferences.getString("username").toString(),
      "addressid": addressid.toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "watersize": watersize.toString(),
      "waterprice": pricemid.toString(),
      "nobottles": countitemsmid.toString(),
    };

    var response = await waterData.sellwatermid(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "the request added successfully",
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
  sellwaterhuge() async {
    if (watersize == null) {
      return Get.snackbar("Error", "Please select the WaterSize");
    }
    if (addressid == null) {
      return Get.snackbar("Error", "Please select address");
    }
    if (watersize == "Bottles Size") {
      return Get.snackbar("Error", "Please select the WaterSize");
    }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      //"addressid": myServices.sharedPreferences.getString("username").toString(),
      "addressid": addressid.toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "watersize": watersize.toString(),
      "waterprice": pricehuge.toString(),
      "nobottles": countitemshuge.toString(),
    };

    var response = await waterData.sellwaterhuge(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "the request added successfully",
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
  sellorganicfruits() async {
    if (typeor == null) {
      return Get.snackbar("Error", "Please select the Organic Type");
    }
    if (specialtype == null) {
      //  return Get.snackbar("Error", "Please select the wanted organic product");
      specialtype = "Apple";
    }
    if (addressid == null) {
      return Get.snackbar("Error", "Please select address");
    }
    // if (typeor == "Bottles Size") {
    //   return Get.snackbar("Error", "Please select the WaterSize");
    // }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      //"addressid": myServices.sharedPreferences.getString("username").toString(),
      "addressid": addressid.toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "typeorganic": typeor.toString(),
      "typespecial": specialtype.toString(),
      "counter": countitemsorfruits.toString(),
    };

    var response = await waterData.sellorganicfruits(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "the request added successfully",
            backgroundColor: Colors.black, colorText: Colors.white);
      } else {
        // statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }

  ////////
  sellorganicveg() async {
    if (typeor == null) {
      return Get.snackbar("Error", "Please select the Organic Type");
    }
    if (specialtype == null) {
      //  return Get.snackbar("Error", "Please select the wanted organic product");
      specialtype = "Tomatoes";
    }
    if (addressid == null) {
      return Get.snackbar("Error", "Please select address");
    }
    if (typeor == "Bottles Size") {
      return Get.snackbar("Error", "Please select the WaterSize");
    }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "username": myServices.sharedPreferences.getString("username").toString(),
      //"addressid": myServices.sharedPreferences.getString("username").toString(),
      "addressid": addressid.toString(),
      "email": myServices.sharedPreferences.getString("email").toString(),
      "phone": myServices.sharedPreferences.getString("phone").toString(),
      "typeorganic": typeor.toString(),
      "typespecial": specialtype.toString(),
      "counter": countitemsorveg.toString(),
    };

    var response = await waterData.sellorganicveg(data);

    print("=========== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.home);
        Get.snackbar("Success", "the request added successfully",
            backgroundColor: Colors.black, colorText: Colors.white);
      } else {
        // statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
    // price = TextEditingController();
    getShippingAddress();
    super.onInit();
  }

  @override
  void dispose() {
    // price.dispose();
    super.dispose();
  }
}
