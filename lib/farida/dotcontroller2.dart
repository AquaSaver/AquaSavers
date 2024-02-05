import 'package:AquaSavers/farida/onboarding2con.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/data/datasource/static/static.dart';

class CustomDotControllerOnBoarding2 extends StatelessWidget {
  const CustomDotControllerOnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingFarmingControllerImp2>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 4),
                          duration: const Duration(milliseconds: 700),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              color: AppColor.kPrimaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}
//controller.currentPage==index? 20:5