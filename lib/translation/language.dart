import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/translation/changelocal.dart';
import 'package:AquaSavers/translation/custombuttounlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr,style: TextStyle(fontSize: 22),),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "French",
                  onPressed: () {
                    myServices.sharedPreferences.setString("step", "1");
                    controller.changeLang("fr");
                    Get.offNamed(AppRoute.login);
                  }),
              CustomButtonLang(
                  textbutton: "English",
                  onPressed: () {
                                        myServices.sharedPreferences.setString("step", "1");

                    controller.changeLang("en");
                    Get.offNamed(AppRoute.login);
                  }),
            ],
          )),
    );
  }
}
