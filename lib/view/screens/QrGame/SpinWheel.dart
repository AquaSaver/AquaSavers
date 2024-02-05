import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/qrprizecontroller.dart';
import 'package:AquaSavers/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);

  @override
  State<SpinWheel> createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  final selected = BehaviorSubject<int>();
  int rewards = 0;

  List<int> items = [1, 2, 3, 4];
  var itemssel;
  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(Prizecontroller());
    return GetBuilder<Prizecontroller>(
        builder: ((controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/backspinner.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: AppColor.fourthColor,
                  title: Text(
                    "Spinner",
                    style:
                        TextStyle(fontSize: 26, fontFamily: "PlayfairDisplay"),
                  ),
                  elevation: 0.0,
                  centerTitle: true,
                ),
                body: Padding(
                  padding: const EdgeInsets.only(top: 90.0,bottom: 30,right: 30,left: 30),
                  child: SizedBox(
                    height: 400,
                    child: Column(
                      children: [
                        Expanded(
                          child: FortuneWheel(
                            selected: selected.stream,
                            animateFirst: false,
                            items: [
                              for (int i = 0;
                                  i < items.length;
                                  i++) ...<FortuneItem>{
                                FortuneItem(child: Text(items[i].toString())),
                              },
                            ],
                            onAnimationEnd: () {
                              setState(() {
                                rewards = items[selected.value];
                                if (rewards == 1) {
                                  itemssel = "20% coupoun";
                                }
                                if (rewards == 1) {
                                  itemssel = "10% coupoun";
                                }
                                if (rewards == 2) {
                                  itemssel = "20% coupoun";
                                }
                                if (rewards == 3) {
                                  itemssel = "50% coupoun";
                                }
                                if (rewards == 4) {
                                  itemssel = "70% coupoun";
                                }
                                if (rewards == 5) {
                                  itemssel = "100% coupoun";
                                }
                                if (itemssel == "10% coupoun") {
                                  controller.tendiscouponn();
                                }
                                if (itemssel == "20% coupoun") {
                                  controller.twenticouponn();
                                }if (itemssel == "70% coupoun") {
                                  controller.seventydiscouponn();
                                }if (itemssel == "50% coupoun") {
                                  controller.fiftydiscouponn();
                                }
                              });

                              print(rewards);
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(
                              //     content: Text("You just won " +
                              //         itemssel.toString() +
                              //         "Discount"),
                              //   ),
                              // );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   setState(() {
                          //     selected.add(
                          //       Fortune.randomInt(0, items.length),
                          //     );
                          //   });
                          // },
                          child: Container(
                            width: 200,
                            child: MaterialButton(
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Text("Spin"),
                              color: AppColor.fourthColor,
                              textColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  selected.add(
                                    Fortune.randomInt(0, items.length),
                                  );
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ))));
  }
}
