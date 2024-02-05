import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/farida/onboardingfarming2.dart';
import 'package:get/get.dart';

import '../../../linkApi.dart';

List<OnBoardingFarmingModel2> onBoardingList2 = [
  OnBoardingFarmingModel2(
      onTap: () {
        Get.toNamed(AppRoute.cart);
      },
      title: "Germination",
      body:
          "How to sprout the seeds correctly \nHow to water them and give the right conditions to guarantee the right growth",
      image: '${StoreLink.imagesitems}/organic/plantingCrops.jpg'),
  OnBoardingFarmingModel2(
      title: "cultivation",
      body:
          "Aims for the concern of cultivation\n of plants producing organic and healthier products for with no chemicals",
      image: '${StoreLink.imagesitems}/organic/cultivation.jpg'),
  OnBoardingFarmingModel2(
      title: "Organic Products",
      body:
          "Using the app to sell the products grown organically safely connecting the buyer and seller",
      image: '${StoreLink.imagesitems}/organic/organicimportance.jpg'),
];
