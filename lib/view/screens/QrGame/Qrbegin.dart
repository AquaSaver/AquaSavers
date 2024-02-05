import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/linkApi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class QrStart extends StatelessWidget {
  const QrStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, top: 60, bottom: 10, right: 15),
        child: Container(
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border.all(width: 10, color: Color.fromARGB(255, 6, 60, 105)),
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 15),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text("Scan to Win !",
                    style: const TextStyle(
                        fontSize: 32,
                        // color: AppColor.kTextColorFarming,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            //

            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Container(
                  width: 330, child: Image.network('${StoreLink.imagesitems}/Qr/Qr.png')),
            ),

            InkWell(
              onTap: () {
                Get.toNamed(AppRoute.qrscan);
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "-----",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset("assets/images/qrtest.gif"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "-----",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ],
              ),
            ),
           Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text("Tap to Start",
                    style: const TextStyle(
                        fontSize: 23,
                        // color: AppColor.kTextColorFarming,
                        color: AppColor.kTextColorFarming,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
