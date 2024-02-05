import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/imageasset.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/controller/drawercontroller/drawercontroller.dart';

class DRAWERMAIN extends StatelessWidget {
  const DRAWERMAIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DrawerControllerr controller = Get.put(DrawerControllerr());
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(height: Get.width / 3.9, color: AppColor.fourthColor),
                  Positioned(
                      top: Get.width / 7.4,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey[100],
                          backgroundImage: AssetImage(AppImageAsset.avatar),
                        ),
                      )),
                ]),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
              child: Divider(height: 9,color:AppColor.fourthColor,thickness: 2,),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  ListTile(
                    onTap: () {
                        Get.toNamed(AppRoute.home);
                    },
                    trailing: Icon(Icons.home_outlined,color: AppColor.fourthColor,),
                    title: Text("Home"),
                    //  title: Text("${controller.username}"),
                    //subtitle: Text("${controller.email}"),
                  ),
                
                  // ListTile(
                  //   onTap: () {
                  //  //   Get.toNamed(AppRoute.employmentt);
                  //   },
                  //   trailing: Icon(Icons.info_outline,color: AppColor.fourthColor,),
                  //   title: Text("About us"),
                  // ),
                    ListTile(
                    onTap: () {
                   Get.toNamed(AppRoute.getintouch);
                    },
                    trailing: Icon(Icons.help_center_outlined,color: AppColor.fourthColor,),
                    title: Text("Help"),
                  ),
                  // ListTile(
                  //   onTap: () {
                  //     Get.toNamed(AppRoute.contactus);
                  //   },
                  //   trailing: Icon(Icons.email_outlined,color:AppColor.kPrimaryColor,),
                  //   title: Text("Contact us"),
                  // ),
                     ListTile(
                    onTap: () {
Get.toNamed(AppRoute.settings);
  
                    },
                    trailing: Icon(Icons.settings,color:AppColor.fourthColor,),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    onTap: () {
                      Get.toNamed(AppRoute.cart);
                    },
                    title: Text("Cart"),
                    trailing: Icon(Icons.shopping_cart_outlined,color: AppColor.fourthColor),
                  ),
                  ListTile(
                    onTap: () {
                      controller.logout();
                    },
                    title: Text("Logout"),
                    trailing: Icon(Icons.exit_to_app,color: AppColor.fourthColor,),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
