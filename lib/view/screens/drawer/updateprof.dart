// // ignore: file_names

// // import 'package:AquaSavers/auth/CustomForgetauth.dart';
// // import 'package:AquaSavers/auth/CustomTextFormauth.dart';
// // import 'package:AquaSavers/auth/CustomTitleauth.dart';
// // import 'package:AquaSavers/auth/CustomnobackButtoun.dart';
// // import 'package:AquaSavers/controller/drawercontroller/updatedrawercontroller.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_customs/Customs/customPhoneForm/country_list.dart';
// // import 'package:flutter_customs/flutter_customs.dart';
// // import 'package:get/get.dart';
// // import 'package:AquaSavers/constant/colors.dart';
// // import 'package:AquaSavers/controller/auth/Signupcontroller.dart';
// // import 'package:AquaSavers/core/class/handlingdataview.dart';
// // import 'package:AquaSavers/functions/validinput.dart';

// // class Updateprofile extends StatefulWidget {
// //   const Updateprofile({Key? key}) : super(key: key);

// //   @override
// //   State<Updateprofile> createState() => _UpdateprofileState();
// // }

// // class _UpdateprofileState extends State<Updateprofile> {
// //   @override
// //   Widget build(BuildContext context) {
// //     CountryListController countryListController =
// //       Get.put(CountryListController());
// //       String selectedCountryCode = countryListController.countries[0].code;
// //  Get.put(() => updatecontroller());
// //     return Scaffold(
// //   appBar:   AppBar(
// //           centerTitle: true,
// //           backgroundColor: AppColor.fourthColor,
// //           elevation: 0.0,
// //           title: Text(
// //             "Reset Data",
// //             style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.bold),
// //           ),
// //         ),
// //       body: 
// //       GetBuilder<updatecontroller>
// //       (builder: (controller) => 
// //       HandlingDataView(statusRequest: controller.statusRequest, widget:Container(
// //         padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
// //         child: Form(
// //           key: controller.formstate,
// //           child: ListView(
// //             children: [
// //               const SizedBox(
// //                 height: 20,
// //               ),
// //               const CustomTitleauth(
// //                 text: "Update",
// //               ),
            
// //               SizedBox(
// //                 height: 10,
// //               ),

// //               CustomTextFormauth( valid: (val){
// //                      return (validInput(val!, 'username', 3, 100));
// //               },
// //                 iconData: Icons.person_2_outlined,
// //                 labeltext: ("Username"),
// //                 mycontroller: controller.username, isNumber : false, hinttext: '',
        
// //                 ///mycontroller: ,
// //               ),
// //               SizedBox(
// //                 height: 10,
// //               ),
// // CustomPhoneForm(hinttext: "", labeltext: "Phone.No", iconData: Icons.phone_android_outlined, onCountryChanged:(value) {
// //                           setState(() {
// //                             selectedCountryCode = value;
// //                           });
// //           },   valid: (val){
// //                      return (validInput(val!, 'password', 11, 12));
// //               }, mycontroller: controller.phone),

         
            
// //               SizedBox(
// //                 height: 5,
// //               ),
// //               CustomForgetauth(
// //                 text: 'Update',
// //                 onPressed: () {
// //                   controller.updatedata();
// //                 },
// //               ),
             
// //             ],
// //           ),
// //         ),
// //       ), )
// //       )
// //     );
// //   }
// // }

      
// import 'package:AquaSavers/auth/CustomTextFormauth.dart';
// import 'package:AquaSavers/constant/colors.dart';
// import 'package:AquaSavers/constant/imageasset.dart';
// import 'package:AquaSavers/controller/drawercontroller/updatedrawercontroller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_customs/Customs/customPhoneForm/country_list.dart';
// import 'package:flutter_customs/Customs/customPhoneForm/customPhoneForm.dart';
// import 'package:get/get.dart';

// import 'package:AquaSavers/controller/auth/forgetppassword/resetpasswordcontroller.dart';
// import 'package:AquaSavers/core/class/handlingdataview.dart';
// import 'package:AquaSavers/functions/validinput.dart';
// import 'package:lottie/lottie.dart';
// import '../../../auth/CustomForgetauth.dart';
// import '../../../auth/CustomTitleauth.dart';


// class ResetPassword2 extends StatefulWidget {
//   const ResetPassword2({Key? key}) : super(key: key);

//   @override
//   State<ResetPassword2> createState() => _ResetPassword2State();
// }

// class _ResetPassword2State extends State<ResetPassword2> {
//   @override
//   Widget build(BuildContext context) {
//    CountryListController countryListController =
//       Get.put(CountryListController());
//       String selectedCountryCode = countryListController.countries[0].code;
//         Get.put(updatecontroller());
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: AppColor.fourthColor,
//         elevation: 0.0,
//         title: Text(
//           "Reset Password",
//           style: TextStyle(fontSize: 22, color: Colors.white),
//         ),
//       ),
//       body: 
//       GetBuilder<updatecontroller>(builder: (controller) =>  HandlingDataView(statusRequest: controller.statusRequest, widget: Container(
//         padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//         child: Form(
//           key: controller.formstate,
//           child: ListView(
//             children: [
//               const SizedBox(
//                 height: 10,
//               ),
//               const CustomTitleauth(
//                 text: "New Password",
//               ),
//               // const SizedBox(
//               //   height: 10,
//               // ),
//            //   Text('${controller.email}'),
//               CustomPhoneForm(hinttext: "", labeltext: "Phone.No", iconData: Icons.phone_android_outlined, onCountryChanged:(value) {
//                           setState(() {
//                             selectedCountryCode = value;
//                           });
//           },   valid: (val){
//                      return (validInput(val!, 'password', 11, 12));
//               }, mycontroller: controller.phone),
//              // SizedBox(height: 10),
             
//               SizedBox(
//                 height: 5,
//               ),
//               CustomTextFormauth( valid: (val){
//                   return (validInput(val!, 'username', 5, 100));
//               }, onTapIcon: () {
//                            //   controller.showPassword();
//                             },
//                 iconData: Icons.remove_red_eye,
//                 labeltext: ("Confirmation"), mycontroller: controller.username, isNumber: false, hinttext: '',
//    //     obscureText: controller.isshowpassword,
//                 ///mycontroller: ,
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               CustomForgetauth(
//                 text: 'Save ',
//                 onPressed: () {
//                   controller.updatedata();
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),) ,)
      
//     );
//   }
// }
