import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/drawercontroller/drwaerprofile.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/linkApi.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/BF%20Gatabo-Kigwatiwest.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/BF%20Gatumba1.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/BF%20kwitangiwes.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/DP%20Dispensary%20Matala.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/Kamende.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/Kisima%20cha%20kijiji%20Ndono.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/Maquiringawest.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/Marera%20health%20care%20borehole.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/Mavilica.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/Mazeze%20clinic%20borehole.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/Msingole%20kwa%20Esha%20Mpame%20DP.dart';
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
  "Kamende",
  "BF Gatumba1",
  "Kisima cha kijiji Ndono ",
  "DP Dispensary Matala",
];
List<String> Southdirection = <String>[
  "Water Points",
  "Mavilica",
  "Msingole kwa Esha Mpame DP",
];
List<String> eastdirection = <String>[
  "Water Points",
  "Mazeze clinic borehole",
  "Marera health care borehole",
];
List<String> westdirection = <String>[
  "Water Points",
  "BF Gatabo-Kigwati",
  "BF kwitangi 8",
  "Maquiringa",
];

class WaterLocatortanzenia extends StatefulWidget {
  const WaterLocatortanzenia({super.key});

  @override
  State<WaterLocatortanzenia> createState() => _WaterLocatortsState();
}

class _WaterLocatortsState extends State<WaterLocatortanzenia> {
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
    // ignore: unused_local_variable
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
          if (myServices.sharedPreferences.getString('region') == 'Tanzenia')
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
                          "Tanzania",
                          style: TextStyle(fontSize: 28, fontFamily: "Nunito"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Image.network(
                          "${StoreLink.imagesitems}/Tanzania/tanzania(1).jpg",
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
                                '${StoreLink.imagesitems}/Tanzania/Tanzania.jpg',fit: BoxFit.cover,)),
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
                                if (value == "Mavilica") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Mavilica()),
                                  );
                                }if (value == "Msingole kwa Esha Mpame DP") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MsingolekwaEshaMpameDP()),
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
                                    '${StoreLink.imagesitems}/Tanzania/south .jpg'),
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
                                if (value == "Mazeze clinic borehole") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Mazezeclinicborehole()),
                                  );
                                }if (value == "Marera health care borehole") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Marerahealthcareborehole()),
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
                                    '${StoreLink.imagesitems}/Tanzania/east .jpg'),
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
                                 if (value == "Maquiringa") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Maquiringawest()),
                                  );
                                } if (value == "BF kwitangi 8") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BFGataboKigwati()),
                                  );
                                } if (value == "BF Gatabo-Kigwati") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BFGataboKigwatiiiii()),
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
                                    '${StoreLink.imagesitems}/Tanzania/west.jpg'),
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
                                if (value == "Kamende") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Kamende()),
                                  );
                                }
                                 if (value == "BF Gatumba1") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BFGatumba1()),
                                  );
                                } if (value == "Kisima cha kijiji Ndono ") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const KisimachakijijiNdono()),
                                  );
                                } if (value == "DP Dispensary Matala") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DPDispensaryMatala()),
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
                                    '${StoreLink.imagesitems}/Tanzania/north.jpg'),
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
