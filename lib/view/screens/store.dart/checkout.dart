
import 'package:AquaSavers/linkApi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/constant/colors.dart';

import 'package:AquaSavers/controller/Storecontroller/checkoutcontollerr.dart';
import 'package:AquaSavers/core/class/handlingdataview.dart';
import 'package:AquaSavers/view/widgets/checkout/Carddeliverytype.dart';
import 'package:AquaSavers/view/widgets/checkout/cardpaymentmethod.dart';
import 'package:AquaSavers/view/widgets/checkout/cardshippingaddress.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckoutController controller = Get.put(CheckoutController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.fourthColor,
        title: const Text('Checkout',style: TextStyle(fontFamily: "PlayfairDisplay"),),
      ),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.all(14),
          child: MaterialButton(
            color: AppColor.fourthColor,
            textColor: AppColor.kBackgroundColor,
            onPressed: () {
                          controller.checkout();

            },
            child: const Text("Checkout",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          )),
      body: GetBuilder<CheckoutController>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                  padding: const EdgeInsets.all(20),
                  child: ListView(
                    children: [
                      const Text(
                        "Choose Payment Method",
                        style: TextStyle(
                            color: AppColor.fourthColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(height: 15),
                      InkWell(
                        onTap: () {
                          controller.choosePaymentMethod("cash");
                        },
                        child: CardPaymentMethodCheckout(
                            title: "Cash On Delivery",
                            isActive: controller.paymentMethod == "cash"
                                ? true
                                : false),
                      ),                 
                      const SizedBox(height: 10),
                                           if (controller.paymentMethod == "cash")

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          const Text(
                            "Choose Delivery Type",
                            style: TextStyle(
                                color: AppColor.fourthColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.chooseDeliveryType("delivery");
                                },
                                child: CardDeliveryTypeCheckout(
                                    imagename: '${StoreLink.imagesitems}/waterdelivery.jpg',
                                    title: "Delivery",
                                    active: controller.deliveryType == "delivery"
                                        ? true
                                        : false),
                              ),
                              const SizedBox(width: 10),
                             
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      if (controller.deliveryType == "delivery")
                  
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Shipping Address",
                              style: TextStyle(
                                  color: AppColor.fourthColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            ...List.generate(
                              controller.dataaddress.length,
                              (index) => InkWell(
                                onTap: () {
                                  controller.chooseShippingAddress(
                                      controller.dataaddress[index].addressId!);
                                },
                                child: CardShppingAddressCheckout(
                                    title:
                                        "${controller.dataaddress[index].addressName}",
                                    body:
                                        "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                    isactive: controller.addressid ==
                                            controller
                                                .dataaddress[index].addressId
                                        ? true
                                        : false),
                              ),
                            )
                          ],
                        )
                    ],
                  )))),
    );
  }
}