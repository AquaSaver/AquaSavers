import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/Storecontroller/Storecontroller.dart';

import '../../../data/model/categoriesmodel.dart';
import '../../../linkApi.dart';

class ListCategoriesStore extends GetView<StoreControllerImp> {
  const ListCategoriesStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            i: index,
            categoriesModel:
                CategoriesModel.fromJson(controller.categories[index]),
          );
        },
      ),
    );
  }
}

class Categories extends GetView<StoreControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({Key? key, required this.categoriesModel, required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.gotoitems(controller.categories, i!,categoriesModel.categoriesId!);
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColor.fourthColor,
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 90,
            width: 80,
            child: CachedNetworkImage(imageUrl: '${StoreLink.imagescategories}/${categoriesModel.categoriesImage}',

              // "${StoreLink.imagescategories}/${categoriesModel.categoriesImage}",
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "${categoriesModel.categoriesName}",
            style: const TextStyle(fontSize: 17, color: Colors.black,fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}










