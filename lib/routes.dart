// ignore_for_file: unused_import

import 'package:AquaSavers/view/screens/drawer/Getintouch.dart';
import 'package:AquaSavers/view/screens/drawer/settings.dart';
import 'package:AquaSavers/view/screens/Home.dart';
import 'package:AquaSavers/splashscreen.dart';
import 'package:AquaSavers/view/screens/QrGame/SpinWheel.dart';
import 'package:AquaSavers/translation/language.dart';
import 'package:AquaSavers/view/screens/Employment.dart';
import 'package:AquaSavers/view/screens/QrGame/Qrbegin.dart';
import 'package:AquaSavers/view/screens/Sellerform.dart';
import 'package:AquaSavers/view/screens/drawer/draweprofile2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:AquaSavers/view/screens/QrGame/Qr.dart';
import 'package:AquaSavers/auth/Signup.dart';

import 'package:AquaSavers/auth/forgetPassword/forgetpassword.dart';
import 'package:AquaSavers/auth/forgetPassword/verifycodeSignup.dart';
import 'package:AquaSavers/auth/login.dart';
import 'package:AquaSavers/auth/forgetPassword/resetPassword.dart';
import 'package:AquaSavers/auth/forgetPassword/verifycode.dart';
import 'package:AquaSavers/auth/forgetPassword/successresetpassword.dart';
import 'package:AquaSavers/auth/successsignup.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/mymidddleware.dart';
import 'package:AquaSavers/view/screens/drawer/contactus.dart';
import 'package:AquaSavers/view/screens/drawer/drawerprofile.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/BellPeppers.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Borocli.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Carrot.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Cucumbers.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/EggPlant.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/GreenBeans.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Kale.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Onions.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Peas.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Spinach.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Tomato.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/cabbage.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/cauliflower.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/lettuce.dart';

import 'package:AquaSavers/view/screens/OrganicFarming.dart';
import 'package:AquaSavers/view/screens/onboarding.dart';
import 'package:AquaSavers/view/screens/store.dart/Cart.dart';
import 'package:AquaSavers/view/screens/store.dart/Store.dart';
import 'package:AquaSavers/view/screens/store.dart/address/add.dart';
import 'package:AquaSavers/view/screens/store.dart/address/view.dart';
import 'package:AquaSavers/view/screens/store.dart/bottomappStore.dart';
import 'package:AquaSavers/view/screens/store.dart/checkout.dart';
import 'package:AquaSavers/view/screens/store.dart/items.dart';
import 'package:AquaSavers/view/screens/store.dart/productdetails.dart';
import 'package:AquaSavers/view/widgets/Storehome/listitems.dart';
import 'package:AquaSavers/view/screens/waterfilter.dart';

List<GetPage<dynamic>>? routes = [
//  Auth
  GetPage(name: '/', page: () => const Language(), middlewares: [MyMiddleWare()]),
  //      GetPage(name: AppRoute.waterlocator, page: () =>  const WaterLocator()),
      GetPage(name: AppRoute.getintouch, page: () =>  GetinTouch()),

      GetPage(name: AppRoute.splash, page: () =>  SplashScreen()),
      GetPage(name: AppRoute.settings, page: () =>  Settings()),

    GetPage(name: AppRoute.home, page: () => const Home()),

  GetPage(name: AppRoute.login, page: () => const login()),

  //GetPage(name: '/', page: () => const login(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.onBoardingFarming, page: () => const OnBoardingFarming()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerifyCodeSignUP()),
  GetPage(name: AppRoute.organicfarming, page: () => const OrganicFarming()),
  GetPage(name: AppRoute.storehome, page: (() => Store())),
  GetPage(name: AppRoute.items, page: (() => Items())),
  GetPage(name: AppRoute.productdetails, page: (() => ProductDetails())),
    GetPage(name: AppRoute.cart, page: (() => Cart())),
   GetPage(name: AppRoute.addressview, page: () => const AddressView()),
  GetPage(name: AppRoute.addressadd, page: () => const AddressAdd()),
  GetPage(name: AppRoute.checkout, page: () => const Checkout()),
  GetPage(name: AppRoute.drawerprofile, page: () => const DrawerProfile2()),
  GetPage(name: AppRoute.contactus, page: () =>  ContactUs(url: 'https://tawk.to/chat/64b326a6cc26a871b028a4ef/1h5dstvmn',)),
GetPage(name: AppRoute.qrscan, page: () => const QrScan()),
GetPage(name: AppRoute.filter, page: () => const Filter()),
GetPage(name: AppRoute.qrstart, page: () => const QrStart()),
GetPage(name: AppRoute.employmentt, page: () => Employment()),
GetPage(name: AppRoute.seller, page: () => seller()),
GetPage(name: AppRoute.spinwheel, page: () => SpinWheel()),

//GetPage(name: AppRoute.myfavorite, page: () => MyFavorite()),

];
//${StoreLink.imagesitems}/Recording 2023-07-16 152612.mp4'

