// ignore: file_names

import 'package:AquaSavers/constant/imageasset.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_customs/flutter_customs.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/auth/Signupcontroller.dart';
import 'package:AquaSavers/core/class/handlingdataview.dart';
import 'package:AquaSavers/functions/validinput.dart';
import 'package:lottie/lottie.dart';
import 'CustomForgetauth.dart';
import 'CustomTextFormauth.dart';
import 'CustomnobackButtoun.dart';

List<String> region = ["Region", "Senegal", "South Africa", "Tanzenia","Zambia"];
String dropdownValue = region.first;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    // CountryListController countryListController =
    //   Get.put(CountryListController());
    MyServices myServices = Get.find();

    //   String selectedCountryCode = countryListController.countries[0].code;
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.fourthColor,
          elevation: 0.0,
          title: Text(
            "Sign Up",
            style: TextStyle(
                fontFamily: "PlayfairDisplay",
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: GetBuilder<SignUpControllerImp>(
            builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          // const CustomTitleauth(
                          //   text: "Welcome Back",
                          // ),
                          const SizedBox(
                            height: 10,
                          ),
                          Lottie.asset(AppImageAsset.signup,
                              height: 200, width: 140),
                          SizedBox(
                            height: 5,
                          ),
                          CustomTextFormauth(
                            valid: (val) {
                              if (val == null || val.isEmpty || val == "") {
                                return 'Please enter your Username';
                              }
                              return null;
                            },
                            iconData: Icons.person_2_outlined,
                            labeltext: ("Username"),
                            mycontroller: controller.username, isNumber: false,
                            hinttext: '',

                            ///mycontroller: ,
                          ),
                          SizedBox(height: 5),
                          CustomTextFormauth(
                            valid: (val) {
                              return (validInput(val!, 'email', 5, 100));
                            },
                            iconData: Icons.email_outlined,
                            labeltext: ("Email"),
                            mycontroller: controller.email,
                            isNumber: false,
                            hinttext: '',

                            ///mycontroller: ,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CustomPhoneForm(
                            hinttext: '',
                            iconData: Icons.phone_android_rounded,
                            mycontroller: controller.phone,
                            labeltext: 'Phone',
                            valid: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == "") {
                                return 'Please enter your phone number';
                              }
                              return null;
                            },
                          ),

                          // CustomTextFormauth( valid: (val){
                          //        return (validInput(val!, 'password', 11, 12));
                          // },
                          //   iconData: Icons.phone_android_outlined,
                          //   labeltext: ("Phone.No"), mycontroller: controller.phone, isNumber : true, hinttext: '',

                          //   ///mycontroller: ,
                          // ),
                          SizedBox(
                            height: 5,
                          ),
                          CustomTextFormauth(
                            valid: (val) {
                              return (validInput(val!, 'password', 5, 30));
                            },
                            obscureText: controller.isshowpassword,
                            onTapIcon: () {
                              controller.showPassword();
                            },
                            iconData: Icons.remove_red_eye,
                            labeltext: ("Password"),
                            mycontroller: controller.password,
                            isNumber: false,
                            hinttext: '',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            //  margin: const EdgeInsets.symmetric(horizontal: 9),
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: Color.fromARGB(255, 146, 143, 143),
                                    width: 1)),
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: const Icon(
                                  Icons.language_outlined,
                                  //color: AppColor.kTextColorFarming,
                                ),
                              ),
                              iconSize: 25,
                              isExpanded: true,
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownValue = value!;
                                  controller.region =
                                                        value;
                                  if (value == "Zambia") {
                                    myServices.sharedPreferences
                                        .setString("region", "Zambia");
                                  }
                                   if (value == "South Africa") {
                                    myServices.sharedPreferences
                                        .setString("region", "South Africa");
                                  } if (value == "Senegal") {
                                    myServices.sharedPreferences
                                        .setString("region", "Senegal");
                                  }
                                  if (value == "Tanzenia") {
                                    myServices.sharedPreferences
                                        .setString("region", "Tanzenia");
                                  }
                                 
                                });
                              },
                              items: region.map<DropdownMenuItem<String>>(
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
                          SizedBox(
                            height: 15,
                          ),
                          CustomForgetauth(
                            text: 'Sign Up ',
                            onPressed: () {
                              controller.signUp();

                              // phoneSubmition(controller.phone);
                              // Future.delayed(const Duration(milliseconds: 20),
                              //     () {
                              //   controller.signUp();
                              // });
                              // ;
                            },
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                    color: AppColor.fourthColor, fontSize: 18),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.goToSignIn();
                                },
                                child: const CustomnobackButtoun(
                                  text: "Sign In",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )));
  }
}
