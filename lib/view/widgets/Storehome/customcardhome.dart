import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/controller/Storecontroller/Storecontroller.dart';


class CustomCardHome extends GetView<StoreControllerImp> {
  final String title;
  final String body;
  const CustomCardHome({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(children: [
        Container(
          alignment: Alignment.center,
        height: 150,
          decoration: BoxDecoration(
              color: AppColor.fourthColor,
              borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            onTap: () {
              Get.toNamed(AppRoute.qrstart);
            },
            title: Text("Aqua Savers Store",
                style: TextStyle(color: Colors.white, fontSize: 26,fontFamily: "PlayfairDisplay")),
            subtitle: Text("Tap Get Coupons",
                style: TextStyle(
                    color: Color.fromRGBO(199, 86, 6, 1),
                    fontSize: 24,fontFamily: "PlayfairDisplay",
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Positioned(
          top: 5,
          right: -15,
          child: Container(
            child: Container(
              height: 140,
              width: 160,
              decoration: BoxDecoration(
                // border: Border.all(
                //     width: 6, color: const Color.fromARGB(255, 1, 17, 12)),

                image: DecorationImage(
                  image: AssetImage("assets/images/icons8-cart-94.png"),
                  //  fit: BoxFit.cover,
                ),
                // color: const Color.fromARGB(255, 33, 243, 51),
                // borderRadius: BorderRadius.circular(160)
              ),
            ),
          ),
        )
      ]),
    );
  }
}
