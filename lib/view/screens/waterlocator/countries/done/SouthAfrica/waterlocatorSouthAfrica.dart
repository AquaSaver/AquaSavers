import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/linkApi.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/SouthAfrica/GHSSMawakaJohn.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/SouthAfrica/Godlogodlo.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/SouthAfrica/KamlotsaHandDug.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/SouthAfrica/Mabinha.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/SouthAfrica/Mfenyane.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/SouthAfrica/Mkhalafene.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/SouthAfrica/top3point.dart';
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
  "Kamlotsa Hand Dug",
  "Mfenyane"
];
List<String> Southdirection = <String>[
  "Water Points",
  "Top three point",
  "Mabinha",
  
];
List<String> eastdirection = <String>[
  "Water Points",
  "Godlogodlo",
"Mkhalafene"  
];
List<String> westdirection = <String>[
  "Water Points",
  "GH SS Mawaka John",
];

class WaterLocatorsouthafrica extends StatefulWidget {
  const WaterLocatorsouthafrica({super.key});

  @override
  State<WaterLocatorsouthafrica> createState() => _WaterLocatortsState();
}

class _WaterLocatortsState extends State<WaterLocatorsouthafrica> {
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
          if (myServices.sharedPreferences.getString('region') == 'South Africa')
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 18.0, bottom: 10, right: 15, left: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: Text(
                          "SouthAfrica",
                          style: TextStyle(fontSize: 28, fontFamily: "Nunito"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Image.network(
                          "${StoreLink.imagesitems}/South Africa/southAfrica.jpg",
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
                                '${StoreLink.imagesitems}/South Africa/SouthaAfrica.jpg',fit: BoxFit.cover,)),
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
                                 if (value == "Mabinha") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Mabinha()),
                                  );
                                }
                                 if (value == "Top three point") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Toppoint()),
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
                                    '${StoreLink.imagesitems}/South Africa/south .jpg'),
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
                                  if (value == "Godlogodlo") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Godlogodlo()),
                                  );
                                }
                                 if (value == "Mkhalafene") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Mkhalafene()),
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
                                    '${StoreLink.imagesitems}/South Africa/east.jpg'),
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
                                  if (value == "GH SS Mawaka John") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GHSSMawakaJohn()),
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
                                    '${StoreLink.imagesitems}/South Africa/west .jpg'),
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
                                if (value == "Kamlotsa Hand Dug") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const KamlotsaHandDug()),
                                  );
                                }
                                if (value == "Mfenyane") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Mfenyane()),
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
                                    '${StoreLink.imagesitems}/South Africa/north.jpg'),
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
