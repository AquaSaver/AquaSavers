import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/imageasset.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:AquaSavers/controller/auth/successressetpasswordcontroller.dart';
import 'package:lottie/lottie.dart';

import '../../view/widgets/cart/buttoncard.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
// ignore: unused_local_variable
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.fourthColor,
        centerTitle: true,
        elevation: 0.0,
        title: Text("Sign In",style: TextStyle(fontFamily: "PlayfairDisplay"),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            //Text(widget.value, style: TextStyle(fontSize: 16,),),
            Lottie.asset(AppImageAsset.acceptqr),
            SizedBox(
              height: 20,
            ),
            CustomButtonCart(
              textbutton: "Sign In",
              onPressed: () {
                Get.toNamed(AppRoute.login);
              },
            )
          ],
        ),
      ),
    );
  }
}
