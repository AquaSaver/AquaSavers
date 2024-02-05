import 'package:AquaSavers/farida/customslide2r.dart';
import 'package:AquaSavers/farida/dotcontroller2.dart';
import 'package:AquaSavers/farida/onboarding2con.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class OnBoardingFarming2 extends StatelessWidget {
  const OnBoardingFarming2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingFarmingControllerImp2()) ; 
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding2(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                   CustomDotControllerOnBoarding2(),
                    Spacer(flex: 1),
                
                  ],
                ))
          ]),
        ));
  }
}