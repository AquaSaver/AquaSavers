import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:AquaSavers/view/screens/store.dart/Store.dart';
import 'package:AquaSavers/view/widgets/customappbar.dart';

import '../../../controller/Storecontroller/itemscontroller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../data/model/ItemModel.dart';
import '../../widgets/Storehome/Customlistitems.dart';
import '../../widgets/Storehome/listcategorieitems.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());

    return Scaffold(
       appBar: AppBar( // leading: Icon(Icons.menu_outlined),
        backgroundColor:Color.fromRGBO(8, 76, 133, 1),
       
        title: Text("Items",style: TextStyle(fontSize: 20,fontFamily: "PlayfairDisplay"),),
        
        ),
        endDrawer: DRAWERMAIN(),
     // drawer: DRAWERMAIN(),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [ CustomAppBar(
            mycontroller: controller.search!,
            titleappbar: "Find Product",
            // onPressedIcon: () {},
            onPressedSearch: () {
              controller.onSearchItems();
            },
            onChanged: (val) {
              controller.checkSearch(val);
            },
          //  onPressedIconFavorite: (){
          //   Get.toNamed(AppRoute.myfavorite);
          //  },
          ),
        
              SizedBox(height: 15,),
          const ListCategoriesItems(),
          GetBuilder<ItemsControllerImp>(
              builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: !controller.isSearch
                      ? GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.data.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.7),
                          itemBuilder: (BuildContext context, index) {
                           
                            return CustomListItems(
                                                              itemsModel: ItemsModel.fromJson(
                                    controller.data[index]));
                          })
                      : ListItemsSearch(listdatamodel: controller.listdata)))
        ]),
      ),
    );
  }
}
