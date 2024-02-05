import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/linkApi.dart';
import 'package:AquaSavers/translation/changelocal.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

var items = ["Report Problem", "Whatsapp", "Email"];
final Uri _uri = Uri.parse("whatsapp://send?phone=+201021229926");
final Uri _uri2 = Uri.parse("whatsapp://send?phone=+201021229926");
final Uri _uri3 = Uri.parse("mailto:Aqua.Savers0O@gmail.com");

class Mukalashi extends StatefulWidget {
  const Mukalashi({super.key});

  @override
  State<Mukalashi> createState() => _StellamarisState();
}

class _StellamarisState extends State<Mukalashi> {
  void sendwhatsapp() {
    launchUrl(_uri);
  }

  void stellalocation() {
    launchUrl(_uri2);
  }

  void sendemail() {
    launchUrl(_uri3);
  }

  String dropdownValue = items.first;

  LocaleController translate = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.fourthColor,
          title: Text(
            "Mukalashi Point",
            style: TextStyle(fontSize: 23, fontFamily: "PlayfairDisplay"),
          ),
          centerTitle: true,
        ),
        drawer: DRAWERMAIN(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.fourthColor),
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
                child: Hero(
                    tag: "Mukalashi",
                    child: Image.network(
                        '${StoreLink.imagesitems}/Zambia/Mukalashi primary school handpump south zambia.jpg')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
              child: Container(
                  width: 400,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColor.fourthColor),
                    borderRadius: BorderRadius.circular(
                      6,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 20),
                        child: ListTile(
                          trailing: Icon(
                            Icons.invert_colors_on_outlined,
                            color: AppColor.fourthColor,
                          ),
                          title: Text(
                            "ID :             235845092",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 20,
                                color: AppColor.fourthColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 0),
                        child: Divider(
                          height: 2,
                          color: AppColor.fourthColor,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 10, top: 10),
                        child: ListTile(
                          // leading: Icon(
                          //   Icons.language,
                          //   color: AppColor.fourthColor,
                          // ),
                          title: Text(
                            "Func :",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 20,
                                color: AppColor.fourthColor,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: DropdownButtonHideUnderline(
                              child: DropdownButton(
                            dropdownColor: Colors.white, //<-- SEE HERE

                            borderRadius: BorderRadius.circular(10),
                            icon: const Icon(
                              Icons.arrow_circle_down_rounded,
                              color: AppColor.fourthColor,
                              size: 30,
                            ),
                            value: dropdownValue,
                            items: items.map(
                              (String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 38.0),
                                    child: Text(
                                      items,
                                      style: TextStyle(
                                          fontFamily: "Nunito",
                                          color: AppColor.fourthColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                            onChanged: (String? language) {
                              dropdownValue = language!;
                              if (language == "Whatsapp") {
                                sendwhatsapp();
                              }
                              if (language == "Email") {
                                print(language);
                                sendemail();
                              }
                            },
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 0),
                        child: Divider(
                          height: 2,
                          color: AppColor.fourthColor,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 8, top: 10),
                        child: ListTile(
                          trailing: Icon(
                            Icons.type_specimen,
                            color: AppColor.fourthColor,
                          ),
                          title: Text(
                            "Type : Borehole or Tubewell",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 20,
                                color: AppColor.fourthColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 0),
                        child: Divider(
                          height: 2,
                          color: AppColor.fourthColor,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0, left: 10, top: 0),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 120.0, top: 0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Location",
                                      style: TextStyle(
                                          fontFamily: "Nunito",
                                          fontSize: 20,
                                          color: AppColor.fourthColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          stellalocation();
                                        },
                                        icon: Icon(
                                          Icons.location_on_outlined,
                                          size: 30,
                                          color: AppColor.fourthColor,
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  )),
            ),
          ],
        ));
  }
}
