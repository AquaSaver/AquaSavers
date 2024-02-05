import 'package:AquaSavers/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContactUs extends StatefulWidget {
  final String url;

  ContactUs({required this.url});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //leading: Icon(Icons.menu_outlined),
          backgroundColor: AppColor.fourthColor,
          title: Text("Support",style: TextStyle(fontSize: 22,fontFamily: "PlayfairDisplay"),),
          centerTitle: true,
      ),
      drawer: DRAWERMAIN(),
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
     ),
);
}
}