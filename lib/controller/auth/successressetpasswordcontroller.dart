
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {

goToPageLogin() ; 

}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  
  @override
  goToPageLogin() {
     Get.offNamed(AppRoute.login) ; 
  }

}