
import 'package:AquaSavers/controller/emplymentcontroller.dart';
import 'package:AquaSavers/core/class/handlingdataview.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:AquaSavers/view/widgets/checkout/cardshippingaddress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<String> agelist = <String>['Age', '12','13','14','15','16','17'];
List<String> certificatelist = <String>['Certificate', 'Computer science','Information technology','Software engineering','Computer engineering','Biology degree','Certification in Microsoft, Linux, or Cisco is advantageous','Any language degree'];
List<String> experiencelist = <String>['Experience', '1 years','2 years','3 years','4 years','5 years','6 years','7 years','8 years','9 years','10 years','+10 years'];

class Employment extends StatefulWidget {
  Employment({Key? key}) : super(key: key);

  @override
  State<Employment> createState() => _EmploymentState();
}

class _EmploymentState extends State<Employment> {
  String dropdownValue = agelist.first;
  String dropdownValu = certificatelist.first;
  String dropdownValue2 = experiencelist.first;

  @override
  Widget build(BuildContext context) {
   Get.put(EmploymentController());
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color(0xFFF4FBFE5),
            title: Text(
              "Employment",
              style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: "PlayfairDisplay"),
            ),          elevation: 0.0,
            centerTitle: true,

          ),
          drawer: DRAWERMAIN(),
          body: GetBuilder<EmploymentController>(
            builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Stack(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.27),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 35, right: 35),
                            child: Column(
                              children: [
                                  Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(
                                      Icons.arrow_circle_down_sharp,
                                      color: Colors.white,
                                    ),
                                   
                                    iconSize: 36,
                                    isExpanded: true,
                                   

                                    onChanged: (String? value) {
                                    
                                      setState(() {
                                        dropdownValue = value!;
                                        //  controller.age = value!;
                                        controller.chooseage(value);
                                      });
                                    },
                                    items: agelist
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                          value: value, child: Text(value,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),));
                                    }).toList(),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                  child: DropdownButton<String>(
                                    value: dropdownValu,
                                    icon: const Icon(
                                      Icons.arrow_circle_down_sharp,
                                      color: Colors.white,
                                    ),
                                   
                                    iconSize: 36,
                                    isExpanded: true,
                                   

                                    onChanged: (String? value) {
                                    
                                      setState(() {
                                        dropdownValu = value!;
                                        controller.choosecertificate(value);
                                      });
                                    },
                                    items: certificatelist
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                          value: value, child: Text(value,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),));
                                    }).toList(),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                               Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                  child: DropdownButton<String>(
                                    value: dropdownValue2,
                                    icon: const Icon(
                                      Icons.arrow_circle_down_sharp,
                                      color: Colors.white,
                                    ),
                                   
                                    iconSize: 36,
                                    isExpanded: true,
                                   

                                    onChanged: (String? value) {
                                    
                                      setState(() {
                                        dropdownValue2 = value!;
                                        controller.chooseexperiance(value);
                                      });
                                    },
                                    items: experiencelist
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                          value: value, child: Text(value,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),));
                                    }).toList(),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                if (controller.experience!= null)
                                Column(
                                
                                //  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Address",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 21),
                                    ),
                                    const SizedBox(height: 7),
                                    ...List.generate(
                                      controller.dataaddress.length,
                                      (index) => InkWell(
                                        onTap: () {
                                          controller.chooseShippingAddress(
                                              controller.dataaddress[index]
                                                  .addressId!);
                                        },
                                        child: Container(
                                          child: CardShppingAddressCheckout(
                                              title:
                                                  "${controller.dataaddress[index].addressName}",
                                              body:
                                                  "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                              isactive: controller.addressid ==
                                                      controller
                                                          .dataaddress[index]
                                                          .addressId
                                                  ? true
                                                  : false),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Apply',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Color(0xff4c505b),
                                      child: IconButton(
                                          color: Colors.white,
                                          onPressed: () {
                                            controller.employment();
                                            //  Get.toNamed(AppRoute.cabbage);
                                          },
                                          icon: Icon(
                                            Icons.arrow_forward,
                                          )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
