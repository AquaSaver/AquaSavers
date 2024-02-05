import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import '../data/datasource/static/static.dart';

abstract class OnBoardingFarmingController extends GetxController {
  next();
  onPageChanged(int index);
  skip();
}

class OnBoardingFarmingControllerImp extends OnBoardingFarmingController {
  late PageController pageController;

  int currentPage = 0;
  MyServices myServices = Get.find();
   //int index = 0;
  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      Get.toNamed(AppRoute.organicfarming);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
     print(index);
    update();

  }

  @override
  void onInit() {
   
    pageController = PageController();
    super.onInit();
  }

  @override
  skip() {
    Get.toNamed(AppRoute.organicfarming);
  }
}
