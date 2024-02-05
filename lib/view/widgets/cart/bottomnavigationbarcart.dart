import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/Storecontroller/cartcontroller.dart';
import 'package:AquaSavers/view/widgets/cart/buttoncard.dart';
import 'package:AquaSavers/view/widgets/cart/custombuttoncoupon.dart';


class BottomNavgationBarCart extends GetView<CartController> {
  final String price;
  final String discount;
 // final String shipping;
  final String totalprice;
  final TextEditingController controllercoupon;
  final void Function()? onApplyCoupon;
  const BottomNavgationBarCart(
      {Key? key,
      required this.price,
      required this.discount,
    // required this.shipping,
      required this.totalprice,
      required this.controllercoupon,
      this.onApplyCoupon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GetBuilder<CartController>(
            builder: (controller) =>
            controller.couponname == null ? 
             Container(
                padding: EdgeInsets.all(8),
                child: Row(children: [
                  Expanded(
                      flex: 2,
                      child: TextFormField(
                        controller: controllercoupon,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            hintText: "Coupon Code",
                            border: OutlineInputBorder()),
                      )),
                  SizedBox(width: 3),
                  Expanded(
                      flex: 1,
                      child: CustomButtonCoupon(
                        textbutton: "apply",
                        onPressed: onApplyCoupon,
                      ))
                ]))
                : Padding(
                  padding: const EdgeInsets.only(top:13.0),
                  child: Container(child: Text("Coupon Code ${controller.couponname!}" , style: TextStyle(color: AppColor.fourthColor , fontWeight: FontWeight.bold),)),
                )
                ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.fourthColor, width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("price", style: TextStyle(fontSize: 16))),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("$price \$", style: TextStyle(fontSize: 16)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("discount", style: TextStyle(fontSize: 16))),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("$discount ", style: TextStyle(fontSize: 16)))
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Container(
            //         padding: EdgeInsets.symmetric(horizontal: 20),
            //         child: Text("shipping", style: TextStyle(fontSize: 16))),
            //     Container(
            //         padding: EdgeInsets.symmetric(horizontal: 20),
            //         child: Text("$shipping ", style: TextStyle(fontSize: 16)))
            //   ],
            // ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Total Price",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColor.fourthColor))),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("$totalprice \$",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColor.fourthColor)))
              ],
            ),
          ]),
        ),
        SizedBox(height: 10),
        CustomButtonCart(
          textbutton: "Order",
          onPressed: () { 
          controller.goToPageCheckout() ;
         //   Get.toNamed(AppRoute.checkout) ; 
          },
        )
      ],
    ));
  }
}