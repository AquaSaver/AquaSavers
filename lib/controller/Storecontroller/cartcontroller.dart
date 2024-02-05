import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/StatusRequest.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/data/datasource/remote/cart_data.dart';
import 'package:AquaSavers/data/model/CartModel.dart';
import 'package:AquaSavers/data/model/Couponmodel.dart';
import 'package:AquaSavers/functions/handlingDatacontroller.dart';

class CartController extends GetxController {
    TextEditingController? controllercoupon;
  CartData cartData = CartData(Get.find());
  int? discountcoupon = 0;
  String? couponname;

  late StatusRequest statusRequest;

  CouponModel? couponModel;
  int? couponid;

  
  MyServices myServices = Get.find();

  List<CartModel> data = [];

  int priceorders = 0;

  int totalcountitems = 0;

  add(int itemsid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.addCart(
        myServices.sharedPreferences.getInt("id")!, itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
             duration: Duration(milliseconds: 1100),
          backgroundColor: Colors.white,
          titleText: Text("Notification",style: TextStyle(color: Colors.red),),
          //  title: "Notification",
            messageText: const Text("Add to cart",style: TextStyle(color: Colors.black),));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  goToPageCheckout() {
    if (data.isEmpty) return Get.snackbar("Warning", "Cart is free");
    Get.toNamed(AppRoute.checkout, arguments: {
      "couponid": couponid ?? 0,
      "priceorder": priceorders , 
      "discountcoupon" : discountcoupon
    });
  }

  getTotalPrice(){
   return (priceorders - priceorders * discountcoupon! / 100 );
  }


  delete(int itemsid) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await cartData.deleteCart(
myServices.sharedPreferences.getInt("id")!, itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
          duration: Duration(milliseconds: 1100),
          backgroundColor: Colors.white,
          titleText: Text("Notification",style: TextStyle(color: Colors.red),),
          //  title: "Notification",
            messageText: const Text("Removed from cart",style: TextStyle(color: Colors.black),));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }
checkcoupon() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await cartData.checkCoupon(controllercoupon!.text);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Map<String, dynamic> datacoupon = response['data'];
        couponModel = CouponModel.fromJson(datacoupon);
        discountcoupon = (couponModel!.couponDiscount!);
        couponname = couponModel!.couponName ; 
               couponid = couponModel!.couponId;

      } else {
        // statusRequest = StatusRequest.failure;
         discountcoupon = 0;
        couponname = null;
        couponid = null;
        Get.snackbar("Warning", "Coupon Not Valid") ;

      }
      // End
    }
    update();
  }

 

  resetVarCart() {
    totalcountitems = 0;
    priceorders = 0;
   data.clear();
  }

  refreshPage() {
        resetVarCart();
    view();
  }

  view() async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await cartData.viewCart(myServices.sharedPreferences.getInt("id")!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        if (response['datacart']['status'] == 'success') {
          List dataresponse = response['datacart']['data'];
          Map dataresponsecountprice = response['countprice'];
          data.clear();
          data.addAll(dataresponse.map((e) => CartModel.fromJson(e)));
          totalcountitems = dataresponsecountprice['totalcount'];
          priceorders = dataresponsecountprice['totalprice'];
          print(priceorders);
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
        controllercoupon = TextEditingController();

   view();
    super.onInit();
  }
}