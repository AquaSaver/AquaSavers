import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:AquaSavers/constant/colors.dart';

class TopAppbarCart extends StatelessWidget {
  final String title;
  const TopAppbarCart({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Container(
          color: AppColor.fourthColor,
          child: Row(
            
            children: [
              
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.white,)),
              )),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
                ),
              )),
              Spacer()
            ],
          ),
        ));
  }
}
