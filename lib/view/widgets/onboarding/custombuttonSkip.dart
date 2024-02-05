
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/onboardingcontroller.dart';

class CustomButtonskipBoarding extends GetView<OnBoardingFarmingControllerImp> {
  const CustomButtonskipBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.only(bottom: 30),
      height: 36,
      width: 150,
      child: MaterialButton(
  shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            controller.skip() ; 
          },
          color: AppColor.kPrimaryColor,
          child: const Text("Skip",style: TextStyle( fontSize: 16,fontFamily: "PlayfairDisplay"))),
    );
  }
}