import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/imageasset.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/translation/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/drawercontroller/drawercontroller.dart';

List<String> items = ["English", "French"];
List<String> region = [
  //"Select your Region"
  //"Egypt",
  "Tanzenia",
  "South Africa",
  "Senegal",
  "Zambia"
];

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String dropdownValue = items.first;
  String dropdownValu = region.first;

  LocaleController translate = Get.find();
  @override
  Widget build(BuildContext context) {
    DrawerControllerr controller = Get.put(DrawerControllerr());
    MyServices myServices = Get.find();
   // dropdownValu = myServices.sharedPreferences.getString("region");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.fourthColor,
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 27, fontFamily: "PlayfairDisplay"),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            color: AppColor.fourthColor,
            height: 150,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 40),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[100],
                    backgroundImage: AssetImage(AppImageAsset.avatar),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${controller.username}                          ",
                      style: TextStyle(
                          color: AppColor.kBackgroundColor, fontSize: 18),
                    ),
                    Text(
                      "${controller.email}",
                      style: TextStyle(
                          color: AppColor.kBackgroundColor, fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
              child: ListTile(
                onTap: () {
                  Get.toNamed(AppRoute.drawerprofile);
                },
                leading: Icon(
                  Icons.account_box_outlined,
                  color: AppColor.fourthColor,
                ),
                title: Text("Profile"),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
              child: Divider(
                height: 2,
                color: AppColor.fourthColor,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
              child: ListTile(
                leading: Icon(
                  Icons.place_outlined,
                  color: AppColor.fourthColor,
                ),
                title: Text("Region :       "),
                trailing: DropdownButtonHideUnderline(
                    child: DropdownButton(
                  dropdownColor: Colors.white, //<-- SEE HERE

                  borderRadius: BorderRadius.circular(10),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  value: dropdownValu,
                  items: region.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValu = value!;
                      if (value == "Egypt") {
                        myServices.sharedPreferences
                            .setString("region", "Egypt");
                      }
                      if (value == "Jordan") {
                        myServices.sharedPreferences
                            .setString("region", "Jordan");
                        print(value);
                      }
                      if (value == "Tanzenia") {
                        myServices.sharedPreferences
                            .setString("region", "Tanzenia");
                      }
                      if (value == "Somalia") {
                        myServices.sharedPreferences
                            .setString("region", "Somalia");
                      }
                      if (value == "South Africa") {
                        myServices.sharedPreferences
                            .setString("region", "South Africa");
                      }
                      if (value == "Senegal") {
                        myServices.sharedPreferences
                            .setString("region", "Senegal");
                      }
                      if (value == "Mozambique") {
                        myServices.sharedPreferences
                            .setString("region", "Mozambique");
                      }
                      if (value == "Cameroon") {
                        myServices.sharedPreferences
                            .setString("region", "Cameroon");
                      }
                      if (value == "Zambia") {
                        myServices.sharedPreferences
                            .setString("region", "Zambia");
                      }
                    });
                  },
                )),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
              child: Divider(
                height: 2,
                color: AppColor.fourthColor,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
              child: ListTile(
                leading: Icon(
                  Icons.language,
                  color: AppColor.fourthColor,
                ),
                title: Text("Language :"),
                trailing: DropdownButtonHideUnderline(
                    child: DropdownButton(
                  dropdownColor: Colors.white, //<-- SEE HERE

                  borderRadius: BorderRadius.circular(10),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  value: dropdownValue,
                  items: items.map(
                    (String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: (String? language) {
                    setState(() {
                      dropdownValue = language!;
                      if (language == "English") {
                        translate.changeLang("en");
                      }
                      if (language == "French") {
                        translate.changeLang("fr");
                        print(language);
                      }
                    });
                  },
                )),
              ),
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
            //   child: Divider(
            //     height: 2,
            //     color: AppColor.fourthColor,
            //     thickness: 1,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
            //   child: ListTile(
            //     onTap: () {},
            //     leading: Icon(
            //       Icons.group_add_outlined,
            //       color: AppColor.fourthColor,
            //     ),
            //     title: Text("Share App"),
            //   ),
            // ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
              child: Divider(
                height: 2,
                color: AppColor.fourthColor,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
              child: ListTile(
                onTap: () {
                  controller.logout();
                },
                leading: Icon(
                  Icons.logout_outlined,
                  color: AppColor.fourthColor,
                ),
                title: Text("Log Out"),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
