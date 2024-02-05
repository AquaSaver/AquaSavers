import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/controller/onboardingcontroller.dart';
import 'package:AquaSavers/view/widgets/onboarding/custombutton.dart';
import 'package:AquaSavers/view/widgets/onboarding/custombuttonSkip.dart';
import 'package:AquaSavers/view/widgets/onboarding/customslider.dart';
import 'package:AquaSavers/view/widgets/onboarding/dotcontroller.dart';
class OnBoardingFarming extends StatelessWidget {
  const OnBoardingFarming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingFarmingControllerImp()) ; 
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 1),
                    CustomButtonOnBoarding(),
                    CustomButtonskipBoarding()
                  ],
                ))
          ]),
        ));
  }
}