import 'package:AquaSavers/farida/static2.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/myservices.dart';

abstract class OnBoardingFarmingController2 extends GetxController {
  next();
  onPageChanged(int index);
  skip();
}

class OnBoardingFarmingControllerImp2 extends OnBoardingFarmingController2 {
  late PageController pageController;

  int currentPage = 0;
  MyServices myServices = Get.find();
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList2.length - 1) {
   
      Get.offAllNamed(AppRoute.organicfarming);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
    }
  }

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

  @override
  skip() {
    Get.offNamed(AppRoute.organicfarming);
  }
}
