import 'dart:io';
import 'package:AquaSavers/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "Warning",
      titleStyle:const  TextStyle(color: AppColor.fourthColor , fontWeight: FontWeight.bold),
      middleText: "Are you sure to exit the app?",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.fourthColor)),
            onPressed: () {
              exit(0);
            },
            child:const Text("Yes")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.fourthColor)),
            onPressed: () {
              Get.back();
            },
            child:const Text("Cancel"))
      ]);
  return Future.value(true);
}