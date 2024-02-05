import 'package:AquaSavers/alertexitapp.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/SouthAfrica/waterlocatorSouthAfrica.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/Zambia/waterlocatorzambia.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/senegal/WatarLocatorsenegal.dart';
import 'package:AquaSavers/view/screens/waterlocator/countries/done/tanzenia/waterlocatortanzenia.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/imageasset.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:lottie/lottie.dart';

import '../../controller/drawercontroller/drwaerprofile.dart';
import '../../translation/changelocal.dart';
var items =["English", "French"];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   String dropdownValue = items.first;

  LocaleController translate = Get.find();
  @override
  Widget build(BuildContext context) {
    DrawerProfileControllerr controller = Get.put(DrawerProfileControllerr());
    MyServices myServices = Get.find();
    

    //  DrawerControllerr controller = Get.put(DrawerControllerr());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.fourthColor,
        title: Text(
          "Aqua Savers",
          style: TextStyle(fontSize: 23, fontFamily: "PlayfairDisplay"),
        ),
        centerTitle: true,
    
    actions: [
 
 ],
      ),
      drawer: DRAWERMAIN(),
      body: WillPopScope(child:  Container(
        child: ListView(
          children: [
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topLeft,
                children: [
                  Container(
                      height: Get.width / 2.9,
                      color: Color.fromARGB(255, 66, 189, 216)),
                  Positioned(
                      top: Get.width / 19.97,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Column(
                                // color: Colors.amber,
                                // padding: EdgeInsets.all(9),
                                // decoration: BoxDecoration(
                                //     color: AppColor.fourthColor,
                                //     borderRadius: BorderRadius.circular(20)),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text(
                                      "Welcome Back,             ",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 5, 5, 102),
                                          fontSize: 18,
                                          fontFamily: "PlayfairDisplay",
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    // child: Text("${controller.username}, Our User",style: TextStyle(color: Color.fromARGB(255, 5, 5, 102),fontSize: 25,fontFamily:"PlayfairDisplay",fontWeight: FontWeight.bold ),),
                                    child: Text(
                                      "Our Saver, ${controller.username}",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 5, 5, 102),
                                          fontSize: 23,
                                          fontFamily: "PlayfairDisplay",
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ]),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      top: Get.width / 3.97,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Container(
                                // color: Colors.amber,
                                padding: EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                    color: AppColor.fourthColor,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Click on your needed Feature",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.grey[100],
                                backgroundImage:
                                    AssetImage(AppImageAsset.avatar),
                              ),
                            )
                          ],
                        ),
                      )),
                ]),
            SizedBox(height: 40),
            // Divider(height: 5,color: Colors.black,),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                     
                      InkWell(
                        onTap: () {
                          
     if (myServices.sharedPreferences.getString('region') == 'Zambia') {
             Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const WaterLocatorzambia()),
                                  );

    }
     if (myServices.sharedPreferences.getString('region') == 'Tanzenia') {
     
             Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const WaterLocatortanzenia()),
                                  );

    }
     if (myServices.sharedPreferences.getString('region') == 'South Africa') {
     
             Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const WaterLocatorsouthafrica()),
                                  );

    }
    if (myServices.sharedPreferences.getString('region') == 'Senegal') {
     
             Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const WaterLocatorsenegal()),
                                  );

    }
     if (myServices.sharedPreferences.getString('region') == 'Egypt') {
     
                                     Get.toNamed(AppRoute.waterlocator);


    }
   
                         // Get.toNamed(AppRoute.waterlocator);
                        },
                        child: Card(
                            child: Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: AppColor.fourthColor),
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                          height: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Lottie.asset("assets/lottie/Waterlocator.json",
                                    height: 110),
                                SizedBox(
                                  width: 2,
                                ),
                                Container(
                                    child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    "Water Locator",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: "Nunito"),
                                  ),
                                )),
                                SizedBox(
                                  width: 14,
                                ),
                                IconButton(onPressed: (){ Get.defaultDialog(
              title: "Water Locator", middleText: "Made to list the products either the grown products , water or made pottery");}, icon:Icon(Icons.info_outline,size: 20,color: Color.fromARGB(255, 105, 111, 121),) )
                              ],
                            ),
                          ),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(onTap: () {
                                          Get.toNamed(AppRoute.onBoardingFarming);

                  },
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Lottie.asset("assets/lottie/organic.json",
                                height: 110),
                            SizedBox(
                              width: 0,
                            ),
                            Container(
                                child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Organic Farming",
                                style:
                                    TextStyle(fontSize: 20, fontFamily: "Nunito"),
                              ),
                              
                            ),) ,SizedBox(
                                  width: 0,
                                ),
                                IconButton(onPressed: (){ Get.defaultDialog(
              title: "Organic Farming", middleText: "A step by step guide to teach people how to grow crops organically with no chemicals");}, icon:Icon(Icons.info_outline,size: 20,color: Color.fromARGB(255, 105, 111, 121),) )
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(onTap: () {
                                          Get.toNamed(AppRoute.filter);

                  },
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Lottie.asset("assets/lottie/waterfilter.json",
                                height: 110),
                            SizedBox(
                              width:10,
                            ),
                            Container(
                                child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Water Filtration",
                                style:
                                    TextStyle(fontSize: 20, fontFamily: "Nunito"),
                              ),
                            )), SizedBox(
                                  width: 0,
                                ),
                                IconButton(onPressed: (){ Get.defaultDialog(
              title: "Water Filtration", middleText: "A step by step filter to show how to filter filthy water into drinkable water and how to use the resulting dirt in making pottery or farming spaces");}, icon:Icon(Icons.info_outline,size: 20,color: Color.fromARGB(255, 105, 111, 121),) )
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(onTap: () {
                                          Get.toNamed(AppRoute.storehome);

                  },
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Lottie.asset("assets/lottie/buy.json", height: 110),
                            SizedBox(
                              width: 70,
                            ),
                            Container(
                                child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Store",
                                style:
                                    TextStyle(fontSize: 20, fontFamily: "Nunito"),
                              ),
                            )), SizedBox(
                                  width: 42,
                                ),
                                IconButton(onPressed: (){ Get.defaultDialog(
              title: "Store", middleText: "To buy our products that are made using the app either the organic products , water or pottery");}, icon:Icon(Icons.info_outline,size: 20,color: Color.fromARGB(255, 105, 111, 121),) )
                            
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(onTap: () {
                                          Get.toNamed(AppRoute.seller);

                  },
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Lottie.asset("assets/lottie/sell.json", height: 100),
                            SizedBox(
                              width: 35,
                            ),
                            Container(
                                child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Selling",
                                style:
                                    TextStyle(fontSize: 20, fontFamily: "Nunito"),
                              ),
                            )), SizedBox(
                                  width: 29,
                                ),
                                IconButton(onPressed: (){ Get.defaultDialog(
              title: "Selling", middleText: "Made to list the products either the grown products , water or made pottery");}, icon:Icon(Icons.info_outline,size: 20,color: Color.fromARGB(255, 105, 111, 121),) )
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(onTap: () {
                                          Get.toNamed(AppRoute.qrstart);

                  },
                    child: Card(
                        child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Lottie.asset("assets/lottie/scan.json",
                                height: 120, width: 110),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                                child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "QR Prize",
                                style:
                                    TextStyle(fontSize: 20, fontFamily: "Nunito"),
                              ),
                            )), SizedBox(
                                  width: 20,
                                ),
                                IconButton(onPressed: (){ Get.defaultDialog(
              title: "QR Prize", middleText: " A simple game depends mainly on luck that encourages people to increase the recycling process");}, icon:Icon(Icons.info_outline,size: 20,color: Color.fromARGB(255, 105, 111, 121),) )
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(onTap: () {
                                          Get.toNamed(AppRoute.employmentt);

                  },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:10.0),
                      child: Card(
                          child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: AppColor.fourthColor),
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        height: 110,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Lottie.asset("assets/lottie/contract.json",
                                  height: 120),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                  child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  "Employment",
                                  style:
                                      TextStyle(fontSize: 20, fontFamily: "Nunito"),
                                ),
                              )), SizedBox(
                                  width: 10,
                                ),
                                IconButton(onPressed: (){ Get.defaultDialog(
              title: "Employment", middleText: "Made to decrease unemployment by getting simple data to employ people");}, icon:Icon(Icons.info_outline,size: 20,color: Color.fromARGB(255, 105, 111, 121),) )
                            ],
                          ),
                        ),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),onWillPop: alertExitApp)
    );
  }
}
