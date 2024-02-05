import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/farida/onboarding2con.dart';
import 'package:AquaSavers/farida/static2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';

class CustomSliderOnBoarding2 extends GetView<OnBoardingFarmingControllerImp2> {
  const CustomSliderOnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int cur = 0;
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          cur = val;
          // ignore: avoid_print
         print(val);
        },
        itemCount: onBoardingList2.length,
 itemBuilder: (context, i) =>
InkWell(
              onTap: () {
                if (cur == 0) {
                  Get.toNamed(AppRoute.organicfarming);
                } else if (cur == 2) {
Get.toNamed(AppRoute.login);
}
},
  child:             Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(onBoardingList2[i].title!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  const SizedBox(height: 2),
                  Image.network(
                    onBoardingList2[i].image!,
                    width: 200,
                    height: 230,
                    fit: BoxFit.fill,
                  ),
                  Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        onBoardingList2[i].body!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            height: 2,
                            color: AppColor.kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                ],
              ),)
            );
  }
}
