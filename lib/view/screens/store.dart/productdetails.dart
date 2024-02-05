import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/constant/routes.dart';
import 'package:AquaSavers/core/class/handlingdataview.dart';

import '../../../controller/Storecontroller/productdetailscontroller.dart';
import '../../widgets/productdetails/priceandcount.dart';
import '../../widgets/productdetails/topproductdetails.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
         Get.put(ProductDetailsControllerImp());
    return Scaffold(
      appBar: AppBar( // leading: Icon(Icons.menu_outlined),
        backgroundColor:Color.fromRGBO(8, 76, 133, 1),
       leading: IconButton(icon: Icon(Icons.arrow_back_sharp),onPressed: () {
         Get.back();
       },),
        title: Text("Aqua Store",style: TextStyle(fontSize: 26,fontFamily: "PlayfairDisplay"),),
        
        ),
        bottomNavigationBar: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 40,
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: AppColor.fourthColor,
                onPressed: () {
                  Get.toNamed(AppRoute.cart);
                },
                child: const Text(
                  "Go To Cart",
                  style: TextStyle(
                      color: Color.fromARGB(255, 236, 236, 236),
                      fontWeight: FontWeight.bold),
                ))),
        body: GetBuilder<ProductDetailsControllerImp>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView(children: [
                const TopProductPageDetails(),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${controller.itemsModel.itemsName}",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),
                        PriceAndCountItems(
                            onAdd: () {
                              controller.adds();
                            },
                            onRemove: () {
                              controller.remove();
                            },
                            price: "${controller.itemsModel.itemsPrice}",
                            count: "${controller.countitems}"),
                        const SizedBox(height: 10),

                        //     const SubitemsList()
                      ]),
                )
              ])),
        ));
  }
}
