
import 'package:flutter/material.dart';
import 'package:AquaSavers/constant/colors.dart';

class TopCardCart extends StatelessWidget {
  final String message ; 
  const TopCardCart({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.only(bottom: 5,top: 10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              // height: 20,
              decoration: BoxDecoration(
                color: AppColor.fourthColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(message,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColor.kBackgroundColor)),
            ) ; 
  }
}