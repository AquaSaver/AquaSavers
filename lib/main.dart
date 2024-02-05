// ignore_for_file: unused_import
import 'package:AquaSavers/auth/Signup.dart';
import 'package:AquaSavers/view/screens/drawer/Getintouch.dart';
import 'package:AquaSavers/view/screens/drawer/settings.dart';
import 'package:AquaSavers/splashscreen.dart';
import 'package:AquaSavers/view/screens/QrGame/SpinWheel.dart';
import 'package:AquaSavers/translation/changelocal.dart';
import 'package:AquaSavers/translation/translation.dart';
import 'package:AquaSavers/view/screens/Employment.dart';
import 'package:AquaSavers/auth/forgetPassword/forgetpassword.dart';
import 'package:AquaSavers/view/screens/QrGame/Qrbegin.dart';
import 'package:AquaSavers/view/screens/drawer/draweprofile2.dart';
import 'package:AquaSavers/view/screens/store.dart/address/view.dart';
import 'package:device_preview/plugins.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:AquaSavers/view/screens/QrGame/Qr.dart';
import 'package:AquaSavers/auth/forgetPassword/resetPassword.dart';
import 'package:AquaSavers/binding/initialBindings.dart';
import 'package:AquaSavers/core/class/myservices.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:AquaSavers/routes.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Tomato.dart';
import 'package:AquaSavers/view/screens/OrganicFarming.dart';
import 'package:AquaSavers/view/screens/OrganicFarmvege.dart';
import 'package:AquaSavers/view/screens/onboarding.dart';
import 'package:AquaSavers/view/screens/store.dart/Store.dart';
import 'package:AquaSavers/view/screens/store.dart/bottomappStore.dart';
import 'package:AquaSavers/data/model/ItemModel.dart';
import 'package:AquaSavers/view/screens/waterfilter.dart';
import 'view/screens/Home.dart';
import 'auth/login.dart';
import 'farida/onboarding2.dart';
import 'linkApi.dart';
import 'view/screens/drawer/contactus.dart';
import 'view/screens/drawer/updateprof.dart';
import 'view/screens/Sellerform.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MyServices());
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.language,
     //  home: Home(),
      getPages: routes,
      initialBinding: InitialBindings(),
    );
  }
}
