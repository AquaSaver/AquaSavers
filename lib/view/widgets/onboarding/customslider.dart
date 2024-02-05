import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/onboardingcontroller.dart';
import 'package:AquaSavers/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends  GetView<OnBoardingFarmingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return PageView.builder(
       controller: controller.pageController,
       
      onPageChanged: (val) {
     
 controller.onPageChanged(val) ; 
       // print(val);
      },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                SizedBox(height: 30,),
                Text(onBoardingList[i].title!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25,fontFamily: "PlayfairDisplay")),
                const SizedBox(height: 18),
                Image.network(
                  onBoardingList[i].image!,
                  width: 250,
                  height: 250,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 30,),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                    height: 2,
                    color: AppColor.kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                    )),
              ],
            ));
  }
}