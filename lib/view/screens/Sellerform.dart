
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/imageasset.dart';
import 'package:AquaSavers/controller/Formcontroller.dart';
import 'package:AquaSavers/core/class/handlingdataview.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:AquaSavers/view/widgets/checkout/cardshippingaddress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

List<String> fruveg = ["Organic Choice", "Fruits", "Vegetables"];
//import 'package:lottie/lottie.dart';
List<String> pottery = <String>["Pottery Shapes", "Plate", "Mini Vase"];

List<String> veglist = <String>[
  'Tomatoes',
  'Bell peppers',
  'Carrots',
  'Broccoli',
  'Spinach',
  'Kale',
  'Lettuce',
  'Cabbage',
  'Cauliflower',
  'Green beans',
  'Peas',
  'Zucchini',
  'Eggplant',
  'Cucumbers',
  'Onions',
  'None',
];
List<String> fruitlist = <String>[
  'Apples',
  'Bananas',
  'Berries ',
  'Grapes',
  'Mangoes',
  'Oranges',
  'Pears',
  'Pineapple',
  'Peaches',
  'Plums',
  'Kiwi',
  'Watermelon',
  'Lemon',
  'Lime',
  'Grapefruit',
  'None',
];
List<String> Waterlist = <String>[
  'Bottles Size',
  '250 MiliLitre',
  '1 Litre',
  '1.5 Litre',
  '5 Litre',
];

class seller extends StatefulWidget {
  const seller({super.key});

  @override
  State<seller> createState() => _sellerState();
}

class _sellerState extends State<seller> {
  List<String> items = ["Organic", "Water", "Pottery"];

  int current = 0;
  int counter = 1;
  int standarprice = 0;
  int standarpricepottery = 0;
  int onepricepottery = 0;
  int twopricepottery = 0;
  int threepricepottery = 0;
  int fourpricepottery = 0;
  int fivepricepottery = 0;

  int smallbottleprice = 1;
  int onelitrebottleprice = 2;
  int onelitrehalfbottleprice = 3;
  int fivebottleprice = 5;
  int counterstandar = 0;
  int counterpot5 = 1;

  int countersmall = 1;
  int countermid = 1;
  int counterlarge = 1;
  int counterhuge = 1;
  int counterveg = 1;
  int counterpot1 = 1;
  int counterpot2 = 1;
  int counterpot3 = 1;
  int counterpot4 = 1;
  int counterpotbasic = 1;

  int counterfru = 1;
  String selected = "first";
  int totalPrice = 0;
  int price = 0;
  String? waterselected;
  String? Potteryselected;

  TextEditingController c1 = TextEditingController();

  void initState() {
    Potteryselected = "l";

    waterselected = "l";
    current =1;
    super.initState();
  }

  String dropdownValue = fruitlist.first;
  String dropdownValu = veglist.first;
  String dropdownVal = Waterlist.first;
  String dropdownValue2 = fruveg.first;
  String dropdownValuepottery = pottery.first;

  @override
  Widget build(BuildContext context) {
    Get.put(FormController());

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backspinner.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor.fourthColor,
              title: Text(
                "Seller Form",
                style: TextStyle(
                    fontSize: 24,
                    color: AppColor.kBackgroundColor,
                    fontFamily: "PlayfairDisplay"),
              ),
              elevation: 0.0,
              centerTitle: true,
            ),
            drawer: DRAWERMAIN(),
            // backgroundColor: Colors.transparent,
            body: GetBuilder<FormController>(
              builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: Container(
                  // height: 800,

                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          //  height: 550,
                          margin: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              /// CUSTOM TABBAR
                              SizedBox(
                                width: double.infinity,
                                height: 70,
                                child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: items.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (ctx, index) {
                                      return Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                current = index;

                                                //  print(current);
                                              });
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: AnimatedContainer(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                margin: const EdgeInsets.all(5),
                                                width: 115,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                    color: current == index
                                                        ? AppColor.fourthColor
                                                        : Colors.white54,
                                                    borderRadius: current ==
                                                            index
                                                        ? BorderRadius.circular(
                                                            15)
                                                        : BorderRadius.circular(
                                                            10),
                                                    border: current == index
                                                        ? Border.all(
                                                            color: AppColor
                                                                .fourthColor,
                                                            width: 2)
                                                        : Border.all(
                                                            color: AppColor
                                                                .fourthColor,
                                                            width: 2)),
                                                child: Center(
                                                  child: Text(
                                                    items[index],
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily:
                                                            "PlayfairDisplay",
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: current == index
                                                            ? Colors.white
                                                            : Colors.grey),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                              visible: current == index,
                                              child: Container(
                                                width: 5,
                                                height: 5,
                                                decoration: const BoxDecoration(
                                                    color: AppColor.fourthColor,
                                                    shape: BoxShape.circle),
                                              )),
                                        ],
                                      );
                                    }),
                              ),

                              /// MAIN BODY
                              if (current == 4)
                                Lottie.asset(
                                  AppImageAsset.acceptqr,
                                  height: 220,
                                ),
                              if (current == 2)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color:
                                                          AppColor.fourthColor,
                                                      width: 3)),
                                              child: DropdownButton<String>(
                                                value: dropdownValuepottery,
                                                icon: const Icon(
                                                  Icons.arrow_circle_down_sharp,
                                                  color: AppColor.fourthColor,
                                                ),
                                                iconSize: 25,
                                                isExpanded: true,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    dropdownValuepottery =
                                                        value!;
                                                    controller.potterytype =
                                                        value;
                                                    Potteryselected = value;
                                                    //  controller.age = value!;
                                                    //   controller.chooseage(value);
                                                  });
                                                },
                                                items: pottery.map<
                                                        DropdownMenuItem<
                                                            String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                          String>(
                                                      value: value,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    28.0),
                                                        child: Text(
                                                          value,
                                                          style: TextStyle(
                                                              // fontWeight:
                                                              //     FontWeight
                                                              //         .bold,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ));
                                                }).toList(),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            if (Potteryselected == "l")
                                              // Image.asset(AppImageAsset.WaterFilter,height: 300,),
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Counter: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterpotbasic++;
                                                                  standarpricepottery =
                                                                      counterpotbasic *
                                                                          0;
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterpotbasic}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                   if (counterpotbasic > 0) {
      counterpotbasic--;
    }
                                                                  standarpricepottery =
                                                                      counterpotbasic *
                                                                          0;
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${standarpricepottery}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 25),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  // SizedBox(
                                                  //   height: 90,
                                                  // ),
//SizedBox(height: 20,),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/potterybanner.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "PlayfairDisplay",
                                                            fontSize: 22),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          Get.snackbar("Error", "Please select the Pottery Shapes");
                                                          // controller
                                                          //     .sellwaterhuge();
                                                          //      controller.sellwater();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (Potteryselected ==
                                                "Pottery Shapes")
                                              // Image.asset(AppImageAsset.WaterFilter,height: 300,),
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Counter: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterpot1++;
                                                                  onepricepottery =
                                                                      counterpot1 *
                                                                          0;
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterpot1}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                   if (counterpot1 > 0) {
      counterpot1--;
    }
                                                                  onepricepottery =
                                                                      counterpot1 *
                                                                          0;
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${onepricepottery}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  // SizedBox(
                                                  //   height: 90,
                                                  // ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/potterybanner.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "PlayfairDisplay"),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          // controller
                                                          //     .sellwaterhuge();
                                                          //      controller.sellwater();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (Potteryselected == "Plate")
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Counter: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterpot2++;
                                                                  twopricepottery =
                                                                      counterpot2 *
                                                                          9;
                                                                  controller
                                                                      .addsplate();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterpot2}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 20,
                                                              onPressed: () {
                                                                setState(() {
                                                                  if (counterpot2 > 0) {
    
      counterpot2--;
    }
                                                                  twopricepottery =
                                                                      counterpot2 *
                                                                          9;
                                                                  controller
                                                                      .removeplate();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${twopricepottery}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  //  SizedBox(
                                                  //   height: 90,
                                                  // ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/potterybanner.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "PlayfairDisplay",
                                                            fontSize: 22),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller
                                                                  .priceplate =
                                                              twopricepottery;
                                                          controller
                                                              .sellplate();
                                                          //      controller.sellwater();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (Potteryselected == "Mini Vase")
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Counter: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterpot3++;
                                                                  threepricepottery =
                                                                      counterpot3 *
                                                                          10;
                                                                  controller
                                                                      .addsvase();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterpot3}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
 if (counterpot3 > 0) {
    
      counterpot3--;
    }                                                                  threepricepottery =
                                                                      counterpot3 *
                                                                          10;
                                                                  controller
                                                                      .removevase();
                                                                  // controller
                                                                  //         .choosepricesmall ==
                                                                  //     smallbottleprice;
                                                                  // print(controller
                                                                  //     .choosepricesmall);
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${threepricepottery}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  //  SizedBox(
                                                  //   height: 90,
                                                  // ),

                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/potterybanner.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "PlayfairDisplay"),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller.pricevase =
                                                              threepricepottery;
                                                          controller.sellvase();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (Potteryselected == "Tajin")
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Counter: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterpot4++;
                                                                  fourpricepottery =
                                                                      counterpot4 *
                                                                          9;
                                                                  controller
                                                                      .addstajin();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterpot4}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
 if (counterpot4 > 0) {
    
      counterpot4--;
    }                                                                  fourpricepottery =
                                                                      counterpot4 *
                                                                          9;
                                                                  controller
                                                                      .removetagin();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${fourpricepottery}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "   Shipping Address",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/potterybanner.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  // SizedBox(
                                                  //   height: 90,
                                                  // ),

                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "PlayfairDisplay"),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller
                                                                  .pricetajin =
                                                              fourpricepottery;
                                                          controller
                                                              .selltagin();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (Potteryselected == "1 Litre")
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Counter: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterpot5++;
                                                                  fivepricepottery =
                                                                      counterpot5 *
                                                                          2;
                                                                  // controller
                                                                  //     .addsmid();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterpot5}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterpot5--;
                                                                  fivebottleprice =
                                                                      counterpot5 *
                                                                          2;
                                                                  // controller
                                                                  //     .removemid();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${fivebottleprice}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "   Shipping Address",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  // SizedBox(
                                                  //   height: 90,
                                                  // ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/bannersell.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "PlayfairDisplay"),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          // controller.pricemid =
                                                          //     onelitrebottleprice;
                                                          // controller
                                                          //     .sellwatermid();
                                                          //  controller.sellwater();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              if (current == 1)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color:
                                                          AppColor.fourthColor,
                                                      width: 3)),
                                              child: DropdownButton<String>(
                                                value: dropdownVal,
                                                icon: const Icon(
                                                  Icons.arrow_circle_down_sharp,
                                                  color: AppColor.fourthColor,
                                                ),
                                                iconSize: 25,
                                                isExpanded: true,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    dropdownVal = value!;
                                                    controller.watersize =
                                                        value;
                                                    waterselected = value;
                                                    //  controller.age = value!;
                                                    //   controller.chooseage(value);
                                                  });
                                                },
                                                items: Waterlist.map<
                                                        DropdownMenuItem<
                                                            String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                          String>(
                                                      value: value,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    28.0),
                                                        child: Text(
                                                          value,
                                                          style: TextStyle(
                                                              // fontWeight:
                                                              //     FontWeight
                                                              //         .bold,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ));
                                                }).toList(),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            if (waterselected == "l")
                                              // Image.asset(AppImageAsset.WaterFilter,height: 300,),
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Bottles: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterstandar++;
                                                                  standarprice =
                                                                      counterstandar *
                                                                          0;
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterstandar}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() { if (counterstandar > 0) {
    
      counterstandar--;
    }
                                                                  standarprice =
                                                                      counterstandar *
                                                                          0;
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${standarprice}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 25),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  // SizedBox(
                                                  //   height: 90,
                                                  // ),
//SizedBox(height: 20,),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/bannersell.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "PlayfairDisplay",
                                                            fontSize: 22),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller
                                                              .sellwaterhuge();
                                                          //      controller.sellwater();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (waterselected == "Bottles Size")
                                              // Image.asset(AppImageAsset.WaterFilter,height: 300,),
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Bottles: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterstandar++;
                                                                  standarprice =
                                                                      counterstandar *
                                                                          0;
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterstandar}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() { if (counterstandar > 0) {
    
      counterstandar--;
    }
                                                                  standarprice =
                                                                      counterstandar *
                                                                          0;
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${standarprice}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  // SizedBox(
                                                  //   height: 90,
                                                  // ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/bannersell.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "PlayfairDisplay"),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller
                                                              .sellwaterhuge();
                                                          //      controller.sellwater();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (waterselected == "5 Litre")
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Bottles: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterhuge++;
                                                                  fivebottleprice =
                                                                      counterhuge *
                                                                          5;
                                                                  controller
                                                                      .addshuge();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterhuge}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 20,
                                                              onPressed: () {
                                                                setState(() {
                                                                   if (counterhuge > 0) {
    
      counterhuge--;
    }
                                                                  fivebottleprice =
                                                                      counterhuge *
                                                                          5;
                                                                  controller
                                                                      .removehuge();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${fivebottleprice}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  //  SizedBox(
                                                  //   height: 90,
                                                  // ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/bannersell.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "PlayfairDisplay",
                                                            fontSize: 22),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller.pricehuge =
                                                              fivebottleprice;
                                                          controller
                                                              .sellwaterhuge();
                                                          //      controller.sellwater();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (waterselected ==
                                                "250 MiliLitre")
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Bottles: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  countersmall++;
                                                                  smallbottleprice =
                                                                      countersmall *
                                                                          1;
                                                                  controller
                                                                      .addssmall();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${countersmall}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {if (countersmall > 0) {
    
      countersmall--;
    }
                                                                  smallbottleprice =
                                                                      countersmall *
                                                                          1;
                                                                  controller
                                                                      .removesmall();
                                                                  controller
                                                                          .choosepricesmall ==
                                                                      smallbottleprice;
                                                                  print(controller
                                                                      .choosepricesmall);
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${smallbottleprice}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  //  SizedBox(
                                                  //   height: 90,
                                                  // ),

                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/bannersell.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "PlayfairDisplay"),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller
                                                                  .pricesmall =
                                                              smallbottleprice;

                                                          controller
                                                              .sellwatersmall();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),

                                          
                                            if (waterselected == "1.5 Litre")
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Bottles: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterlarge++;
                                                                  onelitrehalfbottleprice =
                                                                      counterlarge *
                                                                          3;
                                                                  controller
                                                                      .addsonehalf();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterlarge}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                 if (counterlarge > 0) {
    
      counterlarge--;
    }
                                                                  onelitrehalfbottleprice =
                                                                      counterlarge *
                                                                          3;
                                                                  controller
                                                                      .removeonehalf();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${onelitrehalfbottleprice}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/bannersell.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  // SizedBox(
                                                  //   height: 90,
                                                  // ),

                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "PlayfairDisplay"),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller
                                                                  .priceonehalflitre =
                                                              onelitrehalfbottleprice;
                                                          controller
                                                              .sellwateronehalf();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (waterselected == "1 Litre")
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Bottles: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  countermid++;
                                                                  onelitrebottleprice =
                                                                      countermid *
                                                                          2;
                                                                  controller
                                                                      .addsmid();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${countermid}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                     if (countermid > 0) {
    
      countermid--;
    }
                                                                  onelitrebottleprice =
                                                                      countermid *
                                                                          2;
                                                                  controller
                                                                      .removemid();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 44,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            "Total Price: ",
                                                            style: const TextStyle(
                                                                fontFamily: "",
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                height: 1.1),
                                                          ),
                                                          SizedBox(
                                                            width: 23,
                                                          ),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 100,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${onelitrebottleprice}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            width: 55,
                                                          ),
                                                          Text(
                                                            "\$",
                                                            style: TextStyle(
                                                                fontSize: 28,
                                                                color: AppColor
                                                                    .kPrimaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  // SizedBox(
                                                  //   height: 90,
                                                  // ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/bannersell.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "PlayfairDisplay"),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller.pricemid =
                                                              onelitrebottleprice;
                                                          controller
                                                              .sellwatermid();
                                                          //  controller.sellwater();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              if (current == 0)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                           
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color:
                                                          AppColor.fourthColor,
                                                      width: 3)),
                                              child: DropdownButton<String>(
                                                value: dropdownValue2,
                                                icon: const Icon(
                                                  Icons.arrow_circle_down_sharp,
                                                  color: AppColor.fourthColor,
                                                ),
                                                iconSize: 25,
                                                isExpanded: true,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    dropdownValue2 = value!;
                                                    selected = value;
                                                    controller.typeor = value;
                                                    //  controller.age = value!;
                                                    //   controller.chooseage(value);
                                                  });
                                                },
                                                items: fruveg.map<
                                                        DropdownMenuItem<
                                                            String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                          String>(
                                                      value: value,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    28.0),
                                                        child: Text(
                                                          value,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ));
                                                }).toList(),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            //  if(selected == "Organic")

                                            if (selected == "Fruits")
                                              Column(
                                                children: [
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 6),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                            color: AppColor
                                                                .fourthColor,
                                                            width: 3)),
                                                    child:
                                                        DropdownButton<String>(
                                                      value: dropdownValue,
                                                      icon: const Icon(
                                                        Icons
                                                            .arrow_circle_down_sharp,
                                                        color: AppColor
                                                            .fourthColor,
                                                      ),
                                                      iconSize: 25,
                                                      isExpanded: true,
                                                      onChanged:
                                                          (String? value) {
                                                        setState(() {
                                                          dropdownValue =
                                                              value!;
                                                          controller
                                                                  .specialtype =
                                                              value;
                                                          //  controller.age = value!;
                                                          //   controller.chooseage(value);
                                                        });
                                                      },
                                                      items: fruitlist.map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                                String>(
                                                            value: value,
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      28.0),
                                                              child: Text(
                                                                value,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ));
                                                      }).toList(),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 22,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Fruits: ",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              // focusColor: AppColor.fourthColor,
                                                              //  hoverColor: AppColor.fourthColor,
                                                              //    highlightColor: AppColor.fourthColor,
                                                              //    splashColor: AppColor.fourthColor,
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterfru++;
                                                                  controller
                                                                      .addsorganicfruit();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterfru}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                      if (counterfru > 0) {
    
      counterfru--;
    }
                                                                  controller
                                                                      .removeorganicfruit();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 41,
                                                          ),
                                                          Text(
                                                            "Kg",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                          // Icon(
                                                          //   Icons.scale_sharp,
                                                          //   size: 30,
                                                          //   color: AppColor.fourthColor,
                                                          // )
                                                        ],
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  //if (controller.watersize!= null)
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/bannerorganic.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "PlayfairDisplay"),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller
                                                              .sellorganicfruits();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (selected == "Vegetables")
                                              Column(
                                                children: [
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 6),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                            color: AppColor
                                                                .fourthColor,
                                                            width: 3)),
                                                    child:
                                                        DropdownButton<String>(
                                                      value: dropdownValu,
                                                      icon: const Icon(
                                                        Icons
                                                            .arrow_circle_down_sharp,
                                                        color: AppColor
                                                            .fourthColor,
                                                      ),
                                                      iconSize: 25,
                                                      isExpanded: true,
                                                      onChanged:
                                                          (String? value) {
                                                        setState(() {
                                                          dropdownValu = value!;
                                                          controller
                                                                  .specialtypeveg =
                                                              value;
                                                          //  controller.age = value!;
                                                          //   controller.chooseage(value);
                                                        });
                                                      },
                                                      items: veglist.map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                                String>(
                                                            value: value,
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      28.0),
                                                              child: Text(
                                                                value,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ));
                                                      }).toList(),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(
                                                        "Veg:",
                                                        style: const TextStyle(
                                                            fontFamily: "",
                                                            color: AppColor
                                                                .fourthColor,
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.1),
                                                      ),
                                                      SizedBox(
                                                        width: 40,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          IconButton(
                                                              // focusColor: AppColor.fourthColor,
                                                              //  hoverColor: AppColor.fourthColor,
                                                              //    highlightColor: AppColor.fourthColor,
                                                              //    splashColor: AppColor.fourthColor,
                                                              color: AppColor
                                                                  .fourthColor,
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                  counterveg++;
                                                                  controller
                                                                      .addorganicveg();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          2),
                                                              width: 70,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              60),
                                                                  border: Border.all(
                                                                      color: AppColor
                                                                          .fourthColor,
                                                                      width:
                                                                          3)),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        5.0),
                                                                child: Text(
                                                                  "${counterveg}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      height:
                                                                          1.0),
                                                                ),
                                                              )),
                                                          IconButton(
                                                              iconSize: 30,
                                                              onPressed: () {
                                                                setState(() {
                                                                    if (counterveg > 0) {
    
      counterveg--;
    }
                                                                  controller
                                                                      .removeorganicveg();
                                                                });
                                                              },
                                                              icon: const Icon(
                                                                  Icons
                                                                      .remove)),
                                                          SizedBox(
                                                            width: 41,
                                                          ),
                                                          Text(
                                                            "Kg",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: AppColor
                                                                    .fourthColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                          // Icon(
                                                          //   Icons.scale_sharp,
                                                          //   size: 30,
                                                          //   color: AppColor.fourthColor,
                                                          // )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Column(
                                                    //  mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        "Address :",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        controller
                                                            .dataaddress.length,
                                                        (index) => InkWell(
                                                          onTap: () {
                                                            controller.chooseShippingAddress(
                                                                controller
                                                                    .dataaddress[
                                                                        index]
                                                                    .addressId!);
                                                          },
                                                          child: CardShppingAddressCheckout(
                                                              title:
                                                                  "${controller.dataaddress[index].addressName}",
                                                              body:
                                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                                              isactive: controller
                                                                          .addressid ==
                                                                      controller
                                                                          .dataaddress[
                                                                              index]
                                                                          .addressId
                                                                  ? true
                                                                  : false),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15.0,
                                                            right: 12,
                                                            left: 6,
                                                            bottom: 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 5,
                                                            color: AppColor
                                                                .fourthColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          6,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: 150,
                                                        decoration:
                                                            const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/bannerorganic.jpg'),
                                                                  // image: CachedNetworkImage(imageUrl: "imageUrl"),
                                                                  fit: BoxFit
                                                                      .fill),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 350,
                                                    child: MaterialButton(
                                                      shape: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "PlayfairDisplay"),
                                                      ),
                                                      color:
                                                          AppColor.fourthColor,
                                                      textColor: Colors.white,
                                                      onPressed: () {
                                                        setState(() {
                                                          controller
                                                              .sellorganicveg();
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                           
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}

// class AdMobService {
//   static String? get bannerAdUnitId {
//     if (Platform.isAndroid) {
//       return 'ca-app-pub-3940256099942544/6300978111';
//     }
//     return null;
//   }

//   static final BannerAdListener bannerAdListener = BannerAdListener(
//     onAdLoaded: (ad) => debugPrint('Ad loaded'),
//     onAdFailedToLoad: (ad, error) {
//       ad.dispose();
//     },
//     o
//   );
// }
