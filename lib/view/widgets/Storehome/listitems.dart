import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/controller/Storecontroller/Storecontroller.dart';
import 'package:AquaSavers/data/model/ItemModel.dart';
import 'package:AquaSavers/linkApi.dart';


class ListItems extends GetView<StoreControllerImp> {
  
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 140,
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: controller.items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return ItemsHome(
                  itemsModel: ItemsModel.fromJson(controller.items[i]));
            }),
      );
    
  }
}

class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsHome({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
         
            child: Container(
                decoration: BoxDecoration(
                              border: Border.all(width: 5, color: Color.fromARGB(255, 6, 60, 105)),
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
              child: Container(
                
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: CachedNetworkImage(imageUrl:
                 '${StoreLink.imagesitems}/${itemsModel.itemsImage}',
                  //fit: BoxFit.fill,
                ),
              ),
            ),
          
        ),
        Container(
          decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(20)),
          height: 120,
          width: 200,
        ),
        Positioned(
            left: 20,
            top: 10,
            child: Text(
              "${itemsModel.itemsName}",
              style: const TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: 18),
            )),
            // Positioned(
            // right: 30,
            // top: 10,
            // child: Text(
            //   "${itemsModel.itemsDiscount}% Sale",
            //   style: const TextStyle(
            //       color: Color.fromARGB(255, 84, 36, 36),
            //       // fontWeight: FontWeight.bold,
            //       fontSize: 14),
            // ))
      ],
    );
  }
}