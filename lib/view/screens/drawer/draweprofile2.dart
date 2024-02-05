import 'package:AquaSavers/core/class/myservices.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/imageasset.dart';
import 'package:AquaSavers/controller/drawercontroller/drwaerprofile.dart';

class DrawerProfile2 extends StatelessWidget {
  const DrawerProfile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      // ignore: unused_local_variable
      MyServices myServices = Get.find();

    DrawerProfileControllerr controller = Get.put(DrawerProfileControllerr());
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.fourthColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 40),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  title: Text('Hello ${controller.username}',
                      style: TextStyle(fontSize: 30,color: AppColor.kBackgroundColor,fontWeight: FontWeight.bold)),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(AppImageAsset.avatar),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          //    SizedBox(height: 30,),
          Container(
            color: AppColor.fourthColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                shrinkWrap: true,
                childAspectRatio: 0.7,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('${controller.email}', Icons.email_sharp,
                      Colors.blue, () {}),
                  itemDashboard('${controller.phone}', CupertinoIcons.phone,
                      Colors.green, () {}),
                  itemDashboard(
                      'Address', CupertinoIcons.location_circle, Colors.pink,
                      () {
                  //  Get.toNamed(AppRoute.addressadddetails);
                  }),
                  // itemDashboard('Back', CupertinoIcons.back, Colors.green),
                  itemDashboard('Update', Icons.update_rounded, const Color.fromARGB(255, 138, 19, 11),(){
                  // myServices.sharedPreferences.clear();
    // Get.offAllNamed(AppRoute.login);
                  }),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40)
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background,
          void Function()? onPressed) =>
      Container(
        width: 160,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: AppColor.fourthColor,
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: onPressed,
              child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: background,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    iconData,
                    color: Colors.white,
                    size: 40,
                  )),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
}
