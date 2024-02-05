import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/onboardingcontroller.dart';
import 'package:AquaSavers/data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingFarmingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 4),
                          duration: const Duration(milliseconds: 300),
                       width: controller.currentPage == index ? 15 : 7,
                          height: controller.currentPage == index ? 15 : 7,
                          decoration: BoxDecoration(
                              color:controller.currentPage == index ? AppColor.kPrimaryColor:Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}
//controller.currentPage==index? 20:5