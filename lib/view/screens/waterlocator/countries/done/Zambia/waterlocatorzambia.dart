// ignore_for_file: unused_local_variable

import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/drawercontroller/drwaerprofile.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/linkApi.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/Zambia/Chitochi.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/Zambia/Miyoba.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/Zambia/Mukalashi.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/Zambia/Shabasonje.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/Zambia/chiminky.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/Zambia/kimikngy.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/Zambia/mutanuku.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

List<String> directions = <String>[
  "Directions",
  "North",
  "South",
  "East",
  "West"
];
List<String> northdirection = <String>[
  "Water Points",
  "Mutuntutuko",
  "Kimikanga",
];
List<String> Southdirection = <String>[
  "Water Points",
  "Chimini",
  "Mukalashi",
  
];
List<String> eastdirection = <String>[
  "Water Points",
  "Shabasonje",
  "Miyoba",
];
List<String> westdirection = <String>[
"Water Points",
"Chitochi",
];

class WaterLocatorzambia extends StatefulWidget {
  const WaterLocatorzambia({super.key});

  @override
  State<WaterLocatorzambia> createState() => _WaterLocatortsState();
}

class _WaterLocatortsState extends State<WaterLocatorzambia> {
  int current = 0;
  String dropdownValue = directions.first;
  String Directionsselected = "Directions";
  String? northselected;
  String? westselected;
  String? eastselected;
  String? southselected;

  String dropdownValuenorth = northdirection.first;
  String dropdownValuesouth = Southdirection.first;
  String dropdownValueeast = eastdirection.first;
  String dropdownValuewest = westdirection.first;
  int currrent = 0;

  
  @override
  Widget build(BuildContext context) {
    DrawerProfileControllerr controller = Get.put(DrawerProfileControllerr());
  MyServices myServices = Get.find();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.fourthColor,
        title: Text(
          "Water Points",
          style: TextStyle(fontSize: 23, fontFamily: "PlayfairDisplay"),
        ),
        centerTitle: true,
      ),
      drawer: DRAWERMAIN(),
      body: Column(
        children: [
          if (myServices.sharedPreferences.getString('region') == 'Zambia')
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 18.0, bottom: 10, right: 15, left: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 102.0),
                        child: Text(
                          "Zambia",
                          style: TextStyle(fontSize: 28, fontFamily: "Nunito"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Image.network(
                          "${StoreLink.imagesitems}/Zambia/Zambia_.png",
                          height: 40,
                          width: 40,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13.0, vertical: 5),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: AppColor.fourthColor, width: 2)),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.arrow_circle_down_sharp,
                        color: AppColor.fourthColor,
                      ),
                      iconSize: 25,
                      isExpanded: true,
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue = value!;
                          Directionsselected = value;
                          print(Directionsselected);
                        });
                      },
                      items: directions
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28.0),
                              child: Text(
                                value,
                                style: TextStyle(
                                    // fontWeight:
                                    //     FontWeight
                                    //         .bold,
                                    color: Colors.black),
                              ),
                            ));
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                if (Directionsselected == "Directions")
                  Column(
                    children: [
                     Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 0),
                        child: Container(
                          height: 350,
                          width: 500,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppColor.fourthColor),
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                            child: Image.network(
                                '${StoreLink.imagesitems}/Zambia/zambia.jpg',fit: BoxFit.cover,)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 7),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3, color: AppColor.fourthColor),
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                            child: Image.network(
                                '${StoreLink.imagesitems}/choose your direction.png')),
                      ),
                    ],
                  ),
                if (Directionsselected == "South")
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13.0, vertical: 0),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: AppColor.fourthColor, width: 2)),
                          child: DropdownButton<String>(
                            value: dropdownValuesouth,
                            icon: const Icon(
                              Icons.arrow_circle_down_sharp,
                              color: AppColor.fourthColor,
                            ),
                            iconSize: 25,
                            isExpanded: true,
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValuesouth = value!;
                                southselected = value;
                                if (value == "Chimini") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Chimini()),
                                  );
                                }
                                  if (value == "Mukalashi") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Mukalashi()),
                                  );
                                }
                              });
                            },
                            items: Southdirection.map<DropdownMenuItem<String>>(
                                (String value) {
                              return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 28.0),
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          // fontWeight:
                                          //     FontWeight
                                          //         .bold,
                                          color: Colors.black),
                                    ),
                                  ));
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, right: 12, top: 15),
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    '${StoreLink.imagesitems}/Zambia/south.jpg'),
                                // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                fit: BoxFit.fill),
                            border: Border.all(
                                width: 1, color: AppColor.fourthColor),
                            borderRadius: BorderRadius.circular(
                              6,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 7),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3, color: AppColor.fourthColor),
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                            child: Image.network(
                                '${StoreLink.imagesitems}/pick your point.png')),
                      ),
                    ],
                  ),
                if (Directionsselected == "East")
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13.0, vertical: 0),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: AppColor.fourthColor, width: 2)),
                          child: DropdownButton<String>(
                            value: dropdownValueeast,
                            icon: const Icon(
                              Icons.arrow_circle_down_sharp,
                              color: AppColor.fourthColor,
                            ),
                            iconSize: 25,
                            isExpanded: true,
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValueeast = value!;
                                eastselected = value;
                                  if (value == "Shabasonje") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Shabasonje()),
                                  );
                                }
                                   if (value == "Miyoba") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Miyoba()),
                                  );
                                }
                              });
                            },
                            items: eastdirection
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 28.0),
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          // fontWeight:
                                          //     FontWeight
                                          //         .bold,
                                          color: Colors.black),
                                    ),
                                  ));
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, right: 12, top: 15),
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    '${StoreLink.imagesitems}/Zambia/eastt.jpg'),
                                // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                fit: BoxFit.fill),
                            border: Border.all(
                                width: 1, color: AppColor.fourthColor),
                            borderRadius: BorderRadius.circular(
                              6,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 7),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3, color: AppColor.fourthColor),
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                            child: Image.network(
                                '${StoreLink.imagesitems}/pick your point.png')),
                      ),
                    ],
                  ),
                if (Directionsselected == "West")
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13.0, vertical: 0),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: AppColor.fourthColor, width: 2)),
                          child: DropdownButton<String>(
                            value: dropdownValuewest,
                            icon: const Icon(
                              Icons.arrow_circle_down_sharp,
                              color: AppColor.fourthColor,
                            ),
                            iconSize: 25,
                            isExpanded: true,
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValuewest = value!;
                                westselected = value;
                                 if (value == "Chitochi") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Chitochi()),
                                  );
                                }
                              });
                              
                            },
                            items: westdirection
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 28.0),
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          // fontWeight:
                                          //     FontWeight
                                          //         .bold,
                                          color: Colors.black),
                                    ),
                                  ));
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, right: 12, top: 15),
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    '${StoreLink.imagesitems}/Zambia/west.jpg'),
                                // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                fit: BoxFit.fill),
                            border: Border.all(
                                width: 1, color: AppColor.fourthColor),
                            borderRadius: BorderRadius.circular(
                              6,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 7),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3, color: AppColor.fourthColor),
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                            child: Image.network(
                                '${StoreLink.imagesitems}/pick your point.png')),
                      ),
                    ],
                  ),
                if (Directionsselected == "North")
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13.0, vertical: 0),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: AppColor.fourthColor, width: 2)),
                          child: DropdownButton<String>(
                            value: dropdownValuenorth,
                            icon: const Icon(
                              Icons.arrow_circle_down_sharp,
                              color: AppColor.fourthColor,
                            ),
                            iconSize: 25,
                            isExpanded: true,
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValuenorth = value!;
                                northselected = value;
                                if (value == "Mutuntutuko") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Mutaniki()),
                                  );
                                }
                                 if (value == "Kimikanga") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Kimikngy()),
                                  );
                                }
                              });
                            },
                            items: northdirection
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 28.0),
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          // fontWeight:
                                          //     FontWeight
                                          //         .bold,
                                          color: Colors.black),
                                    ),
                                  ));
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, right: 12, top: 15),
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    '${StoreLink.imagesitems}/Zambia/north.jpg'),
                                // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                fit: BoxFit.fill),
                            border: Border.all(
                                width: 1, color: AppColor.fourthColor),
                            borderRadius: BorderRadius.circular(
                              6,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 7),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3, color: AppColor.fourthColor),
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                            child: Image.network(
                                '${StoreLink.imagesitems}/pick your point.png')),
                      ),
                    ],
                  ),
              ],
            ),
         
        ],
      ),
    );
  }
}
