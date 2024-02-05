import 'package:AquaSavers/core/class/myservices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/controller/Storecontroller/Storecontroller.dart';
import 'package:AquaSavers/core/class/StatusRequest.dart';
import 'package:AquaSavers/data/datasource/remote/itemsData.dart';
import 'package:AquaSavers/functions/handlingDatacontroller.dart';

import '../../data/model/ItemModel.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val, int catval);
  getItems(int categoryid);
  goToPageProductDetails(ItemsModel itemsModel);
}

class ItemsControllerImp extends SearchMixController {
  List categories = [];
  int? selectedCat;
  int? categoryid;
  MyServices myServices = Get.find();
  ItemsData itemsData = ItemsData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  @override
  void onInit() {
    intialData();
    search = TextEditingController();

    super.onInit();
  }

  intialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    categoryid = Get.arguments['categoryid'];
    getItems(categoryid!);
  }

  changeCat(val, catval) {
    selectedCat = val;
    categoryid = catval;
    getItems(categoryid!);
    update();
  }

  
  getItems(categoryid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData(categoryid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          data.addAll(response['data']);
        } else {
          statusRequest = StatusRequest.failure;
        }
      }
    }
    update();
  }

  goToPageProductDetails(itemsModel) {
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
  }
}
