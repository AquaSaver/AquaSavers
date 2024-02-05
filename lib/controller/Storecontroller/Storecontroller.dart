
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/StatusRequest.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/data/datasource/remote/StorehomeData.dart';
import 'package:AquaSavers/data/model/ItemModel.dart';
import 'package:AquaSavers/functions/handlingDatacontroller.dart';


abstract class StoreController extends SearchMixController {
  getdata();
  gotoitems(List categories, int selectedCat, int categoryid);
}

class StoreControllerImp extends StoreController {
  StoreHomeData storeHomeData = StoreHomeData(Get.find());
//  List data = [];
  List categories = [];
  List items = [];
      MyServices myServices = Get.find();

 
  late StatusRequest statusRequest;

  @override
    void onInit() {
    search = TextEditingController();
    getdata();
    //initialData();
    super.onInit();
  }
  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await storeHomeData.getData();
    print("===================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']['data']);
        items.addAll(response['items']['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  gotoitems(categories, selectedCat, categoryid) {
    Get.toNamed(AppRoute.items, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
      "categoryid": categoryid
    });
  }

   goToPageProductDetails(itemsModel) {
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
  }
}

class SearchMixController extends GetxController {
  List<ItemsModel> listdata = [];

  late StatusRequest statusRequest;
  StoreHomeData storeHomedata = StoreHomeData(Get.find());

  searchData() async {
    statusRequest = StatusRequest.loading;
    var response = await storeHomedata.SearchData(search!.text);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        listdata.clear();
        List responsedata = response['data'];
        listdata.addAll(responsedata.map((e) => ItemsModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  bool isSearch = false;
  TextEditingController? search;
  checkSearch(val) {
    if (val == "") {
      statusRequest = StatusRequest.none;
      isSearch = false;
    }
    update();
  }

  onSearchItems() {
    isSearch = true;
    searchData();
    update();
  }
}