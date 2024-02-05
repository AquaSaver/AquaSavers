import 'package:AquaSavers/view/widgets/Storehome/bottom.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:AquaSavers/controller/Storecontroller/Storecontroller.dart';
import 'package:AquaSavers/core/class/handlingdataview.dart';
import 'package:AquaSavers/data/model/ItemModel.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:AquaSavers/linkApi.dart';
import 'package:AquaSavers/view/widgets/Storehome/customcardhome.dart';
import 'package:AquaSavers/view/widgets/Storehome/customtitlehome.dart';
import 'package:AquaSavers/view/widgets/customappbar.dart';
import '../../widgets/Storehome/Listcategories.dart';

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StoreControllerImp());
    return Scaffold(
        appBar: AppBar( // leading: Icon(Icons.menu_outlined),
        backgroundColor:Color.fromRGBO(8, 76, 133, 1),
       
        title: Text("Aqua Store",style: TextStyle(fontSize: 26,fontFamily: "PlayfairDisplay"),),
        centerTitle: true,
        ),
        drawer: DRAWERMAIN(),
        body: GetBuilder<StoreControllerImp>(
            builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ListView(
                      children: [
                        CustomAppBar(
                          mycontroller: controller.search!,
                          titleappbar: "Find Product",
                          // onPressedIcon: () {},
                          onPressedSearch: () {
                            controller.onSearchItems();
                          },
                          onChanged: (val) {
                            controller.checkSearch(val);
                          },
                         
                        ),
                        HandlingDataView(
                            statusRequest: controller.statusRequest,
                            widget: !controller.isSearch
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      CustomCardHome(
                                          title: "A summer surprise",
                                          body: "Cashback 20%"),
                                          SizedBox(height: 1,),
                                      CustomTitleHome(title: "Categories"),
                                      ListCategoriesStore(), 
                                       SizedBox(height: 5,),
                                     CustomTitleHome(title: "From Nature To You"),
                                  bottomad(),
                        
                                    ],
                                  )
                                : ListItemsSearch(
                                    listdatamodel: controller.listdata))

                        // const CustomTitleHome(title: "Offer"),
                        // const ListItemsHome()
                      ],
                    )))));
  }
}

class ListItemsSearch extends GetView<StoreControllerImp> {
  final List<ItemsModel> listdatamodel;
  const ListItemsSearch({Key? key, required this.listdatamodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listdatamodel.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              controller.goToPageProductDetails(listdatamodel[index]);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Card(
                  child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        child: CachedNetworkImage(
                            imageUrl:
                                "${StoreLink.imagesitems}/${listdatamodel[index].itemsImage}")),
                    Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(listdatamodel[index].itemsName!),
                          subtitle: Text(listdatamodel[index].categoriesName!),
                        )),
                  ],
                ),
              )),
            ),
          );
        });
  }
}
