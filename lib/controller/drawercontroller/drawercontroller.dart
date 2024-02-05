import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/myservices.dart';

class DrawerControllerr extends GetxController {
  MyServices myServices = Get.find();
  String? username;
    String? email;

  @override
  void onInit() {
   username= myServices.sharedPreferences.getString("username");
    email= myServices.sharedPreferences.getString("email");
    super.onInit();
  }

  logout() {
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login);
  }
}
