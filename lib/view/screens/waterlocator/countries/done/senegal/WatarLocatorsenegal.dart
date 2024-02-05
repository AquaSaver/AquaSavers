import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/linkApi.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/senegal/Nguessine.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/senegal/SaenSouto.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/senegal/SalifuAbdulAziz.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/senegal/bfn1north.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/senegal/mguessine.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/senegal/micheeast.dart';
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
  "BF N*1",
];
List<String> Southdirection = <String>[
  "Water Points",
  "Salifu Abdul Aziz",
  "BF2 Communaute de Nguessine",
  "BF2 Communaute de SaenSouto",
  
];
List<String> eastdirection = <String>[
  "Water Points",
  "Miche",
];
List<String> westdirection = <String>[
  "Water Points",
  "BF2 Communaute de Mbin Mody",
  
];

class WaterLocatorsenegal extends StatefulWidget {
  const WaterLocatorsenegal({super.key});

  @override
  State<WaterLocatorsenegal> createState() => _WaterLocatortsState();
}

class _WaterLocatortsState extends State<WaterLocatorsenegal> {
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
          if (myServices.sharedPreferences.getString('region') == 'Senegal')
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
                          "Senegal",
                          style: TextStyle(fontSize: 28, fontFamily: "Nunito"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Image.network(
                          "${StoreLink.imagesitems}/Senegal/senegal(1).jpg",
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
                                '${StoreLink.imagesitems}/Senegal/Senegal.jpg',fit: BoxFit.cover,)),
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
                                 if (value == "Salifu Abdul Aziz") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SaifAbdulaziz()),
                                  );
                                }
                                  
                                 if (value == "BF2 Communaute de Nguessine") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Nguessine()),
                                  );
                                }
                                if (value == "BF2 Communaute de SaenSouto") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SaenSouto()),
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
                                    '${StoreLink.imagesitems}/Senegal/south.jpg'),
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
                                  if (value == "Miche") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Miche()),
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
                                    '${StoreLink.imagesitems}/Senegal/east.jpg'),
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
                                  if (value =="BF2 Communaute de Mbin Mody") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Mguzezine()),
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
                                    '${StoreLink.imagesitems}/Senegal/west.jpg'),
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
                                if (value == "BF N*1") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BFN1()),
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
                                    '${StoreLink.imagesitems}/Senegal/North.jpg'),
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
