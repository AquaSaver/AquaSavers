
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/Storecontroller/itemscontroller.dart';
import '../../../data/model/ItemModel.dart';
import '../../../linkApi.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  const CustomListItems({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.goToPageProductDetails(itemsModel)  ; 
      },
        child: Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag:"${itemsModel.itemsId}" ,
                child: CachedNetworkImage(
                  imageUrl: StoreLink.imagesitems + "/" + itemsModel.itemsImage!,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 10) , 
              Text( "${itemsModel.itemsName}",
                  style:const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
            
                 Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${itemsModel.itemsPrice} \$",
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "sans")),
                          //         IconButton(
                          // onPressed: () {
                            
                          // },
                          // icon: Icon(
                          //   itemsModel.favorite == "1"
                          //       ? Icons.abc
                          //       : Icons.favorite_border_outlined,
                          //   color: AppColor.fourthColor,
                          // ))
                          //  IconButton(
                          //         onPressed: () {
                          //           if (controller.isFavorite[itemsModel.itemsId] ==
                          //               "1") {
                          //             controller.setFavorite(
                          //                 itemsModel.itemsId, "0");
                          //             controller
                          //                 .removeFavorite(itemsModel.itemsId!);
                          //           } else {
                          //             controller.setFavorite(
                          //                 itemsModel.itemsId, "1");
                          //             controller.addFavorite(itemsModel.itemsId!);
                          //           }
                          //         },
                          //         icon: Icon(
                          //           controller.isFavorite[itemsModel.itemsId] == "1"
                          //               ? Icons.favorite
                          //               : Icons.favorite_border_outlined,
                          //           color: AppColor.fourthColor,
                          //         ))
                        ],
                      )
            ]),
      ),
    ));
  }
}