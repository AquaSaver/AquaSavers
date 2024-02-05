import 'package:flutter/material.dart';
import 'package:AquaSavers/constant/colors.dart';

class CardShppingAddressCheckout extends StatelessWidget {
  final String title;
  final String body;
  final bool isactive;
  const CardShppingAddressCheckout(
      {Key? key,
      required this.title,
      required this.body,
      required this.isactive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      
      color: isactive ? AppColor.fourthColor : Color(0xFFF4FBFE5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(title,
            style: TextStyle(
                color: isactive ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,fontSize: 19)),
        subtitle: Text(body,
            style: TextStyle(fontSize: 16,
                color: isactive ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
