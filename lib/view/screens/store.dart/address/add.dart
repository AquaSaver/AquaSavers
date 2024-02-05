import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:AquaSavers/constant/colors.dart';
import 'package:AquaSavers/controller/addresscontroller/add_controller.dart';
import 'package:AquaSavers/core/class/handlingdataview.dart';

class AddressAdd extends StatelessWidget {
  const AddressAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Get.put(AddAddressController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('add new address'),
      ),
      body: Container(
        child: GetBuilder<AddAddressController>(
            builder: ((controllerpage) => HandlingDataView(
                statusRequest: controllerpage.statusRequest,
                widget: Column(children: [
                  if (controllerpage.kGooglePlex != null)
                    Expanded(
                        child: Stack(
                      alignment: Alignment.center,
                      children: [
                        GoogleMap(
                          mapType: MapType.normal,
                          markers: controllerpage.markers.toSet(),
                          onTap: (latlong) {
                            controllerpage.addMarkers(latlong);
                          },
                          initialCameraPosition: controllerpage.kGooglePlex!,
                          onMapCreated: (GoogleMapController controllermap) {
                            controllerpage.completercontroller!
                                .complete(controllermap);
                          },
                        ),
                        Positioned(
                          bottom: 10,
                          child: Container(
                            child: MaterialButton(
                              minWidth: 200,
                              onPressed: () {
                                controllerpage.goToPageAddDetailsAddress();
                              },
                              child:
                                  Text("Countinue", style: TextStyle(fontSize: 18)),
                              color: AppColor.fourthColor,
                              textColor: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ))
                ])))),
      ),
    );
  }
}