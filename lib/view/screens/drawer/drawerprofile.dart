import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/imageasset.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/controller/drawercontroller/drwaerprofile.dart';

class DrawerProfile extends StatelessWidget {
  const DrawerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DrawerProfileControllerr controller = Get.put(DrawerProfileControllerr());
    return Drawer(
      
      child: Container(
        
        child: ListView(
          children: [
    
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  
                  Container(height: Get.width / 4.3,width: 400, color: AppColor.fourthColor,
                  alignment: Alignment.center,
                    child: Container(child: Text("Account",style: TextStyle(color: Colors.white,fontSize: 36),),)),
                  Positioned(
                      top: Get.width / 3.9,
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
            SizedBox(height: 100),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  ListTile(
                    trailing: Icon(Icons.person_2_outlined),
                     title: Text("Username"),
                    subtitle: Text("${controller.username}"),
                  ),
                  ListTile(
                    trailing: Icon(Icons.email_outlined),
                    title: Text("Email"),
                                                         subtitle: Text("${controller.email}"),
 

                  ),
                  ListTile(
                  
                    trailing: Icon(Icons.local_phone_sharp),
                    title: Text("Phone"),
                                        subtitle: Text("${controller.phone}"),

                  ),
                  ListTile(
                    onTap: () {
                      Get.toNamed(AppRoute.addressview);
                    },
                    trailing: Icon(Icons.location_on_outlined),
                    title: Text("Address"),
                  ),
  //                  ListTile(
  //                   onTap: () {
  //                  Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const ResetPassword2()),
  // );
  //                   },
  //                   trailing: Icon(Icons.update_outlined),
  //                   title: Text("Update"),
  //                 ),
                  ListTile(
                    onTap: () {
                      Get.back();
                    },
                    trailing: Icon(Icons.arrow_back_sharp),
                    title: Text("Back"),
                  ),
                  ListTile(
                    onTap: () {
                      controller.logout();
                    },
                    title: Text("Logout"),
                    trailing: Icon(Icons.exit_to_app),
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
