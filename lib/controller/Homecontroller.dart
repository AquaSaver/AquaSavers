import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/core/class/myservices.dart';

abstract class HomeController extends GetxController {
  onPageChanged(int index);
}

class HomeControllerimp extends HomeController {
  late PageController pageController;

  int currentPage = 0;
  MyServices myServices = Get.find();

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
