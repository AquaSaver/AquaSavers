
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/onboardingcontroller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingFarmingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.only(bottom: 20),
      height: 40,
      width: 290,
      child: MaterialButton(
         shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            controller.next() ; 
          },
          color: AppColor.kPrimaryColor,
          child: const Text("Continue",style: TextStyle( fontSize: 16,fontFamily: "PlayfairDisplay"),)),
    );
  }
}