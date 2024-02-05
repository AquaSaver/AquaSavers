import 'package:AquaSavers/auth/CustomTitleauth.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _uri = Uri.parse("whatsapp://send?phone=+201021229926");
final Uri _uri2 = Uri.parse("mailto:Aqua.Savers0O@gmail.com");

class GetinTouch extends StatefulWidget {
  const GetinTouch({super.key});

  @override
  State<GetinTouch> createState() => _GetinTouchState();
}

class _GetinTouchState extends State<GetinTouch> {
  void sendwhatsapp() {
    launchUrl(_uri);
  }

  void sendemail() {
    launchUrl(_uri2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.fourthColor,
        title: Text(
          "Aqua Savers",
          style: TextStyle(fontSize: 27, fontFamily: "PlayfairDisplay"),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: const CustomTitleauth(
            text: "Get In Touch",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
          child: ListTile(
            onTap: () {
              setState(() {
                sendemail();
              });
            },
            leading: Icon(
              Icons.email_outlined,
              color: AppColor.fourthColor,
            ),
            title: Text("Email"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
          child: Divider(
            height: 2,
            color: AppColor.fourthColor,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
          child: ListTile(
            onTap: () {
              Get.toNamed(AppRoute.contactus);
            },
            leading: Icon(
              Icons.live_help_outlined,
              color: AppColor.fourthColor,
            ),
            title: Text("Live Chat"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
          child: Divider(
            height: 2,
            color: AppColor.fourthColor,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
          child: ListTile(
            onTap: () {
              setState(() {
                sendwhatsapp();
              });
            },
            leading: Icon(
              Icons.message_outlined,
              color: AppColor.fourthColor,
            ),
            title: Text("Whatsapp"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
          child: Divider(
            height: 2,
            color: AppColor.fourthColor,
            thickness: 1,
          ),
        ),
      ]),
    );
  }
}
