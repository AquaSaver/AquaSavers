import 'package:flutter/material.dart';
import 'package:AquaSavers/constant/colors.dart';

class CustomTitleHome extends StatelessWidget {
  final String title ; 
  const CustomTitleHome({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Text(title,
          style:const  TextStyle(
              fontSize: 26,
              color: AppColor.fourthColor,
              fontWeight: FontWeight.bold)),
    );
  }
}