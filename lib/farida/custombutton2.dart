
import 'package:AquaSavers/farida/onboarding2con.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:AquaSavers/constant/colors.dart';

class CustomButtonOnBoarding2 extends GetView<OnBoardingFarmingControllerImp2> {
  const CustomButtonOnBoarding2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.only(bottom: 20),
      height: 40,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            controller.next() ; 
          },
          color: AppColor.kPrimaryColor,
          child: const Text("Continue")),
    );
  }
}