import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:AquaSavers/constant/colors.dart';

import '../../../../linkApi.dart';

class WaterMelon extends StatelessWidget {
  const WaterMelon({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('${StoreLink.imagesitems}/organic/WaterMelonback.jpg'),
                      fit: BoxFit.fill)),
            ),
            scroll()
          ],
        ),
      ),
    );
  }
}

buttonarrow() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: InkWell(
      onTap: () {
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 55,
        width: 55,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Icon(
              Icons.arrow_back_ios,
              size: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

scroll() {
  return DraggableScrollableSheet(builder: ((context, scrollController) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.white),
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: 35,
                  color: Colors.black12,
                ),
              ],
            ),
          ),
          Text(
            "WaterMelon:",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            selectionColor: AppColor.kTextColorFarming,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: Divider(
              height: 2,
            ),
          ),
          Text(
            "Importance",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
            selectionColor: AppColor.kTextColorFarming,
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) => importance(context, index),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(
              height: 2,
            ),
          ),
          Text(
            "Steps",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
            selectionColor: AppColor.kTextColorFarming,
          ),
          const SizedBox(
            height: 7,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 9,
            itemBuilder: (context, index) => steps(context, index),
          ),
        ]),
      ),
    );
  }));
}

importance(BuildContext context, int index) {
  final List<String> names = <String>['Vitamin B6', 'Vitamin A', 'Have anticancer effects', 'Reduce inflammation and oxidative stress'];

  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: Color(0xFFE3FFF8),
          child: Icon(
            Icons.done,
            size: 15,
          ),
        ),
        Text("  ${names[index]}",style: TextStyle(fontWeight: FontWeight.bold,color: AppColor.kTextColorFarming),)
      ],
    ),
  );
}

steps(BuildContext context, int index) {
  final List<String> Stepsinfo = <String>['Choose a suitable location: Select a location that receives full sun for most of the day and has well-drained soil. Watermelons prefer slightly acidic soil with a pH between 6.0 and 7.0.','Prepare the soil: Remove any weeds or grass from the planting area and work the soil to a depth of 2-3 feet. Add organic matter such as compost or well-rotted manure to improve soil fertility and structure.','Select the watermelon varieties: Choose organic watermelon varieties that are disease-resistant and appropriate for your climate. Popular organic watermelon varieties include Crimson Sweet, Sugar Baby, and Black Diamond','Plant the watermelon seeds or seedlings: Watermelon seeds can be directly sown into the soil, or seedlings can be transplanted. Plant the seeds or seedlings in hills or rows, with a spacing of around 2-3 feet between plants.' , 'Water the plants: Water the plants immediately after planting and then regularly throughout the growing season, keeping the soil evenly moist but not waterlogged.','Mulch the plants: Apply a layer of organic mulch such as straw, leaves, or wood chips around the base of the plants to help retain moisture and suppress weeds.'  ,'Fertilize the plants: Use organic fertilizers such as compost, fish emulsion, or bone meal to provide nutrients to the plants. Apply the fertilizer according to the instructions on the package.',' Control pests and diseases: Use organic methods to control pests and diseases, such as companion planting, crop rotation, and natural predators. Avoid using synthetic pesticides and fungicides.', 'Harvest the watermelons: Watermelons are ready to harvest when they sound hollow when tapped and the underside of the fruit turns yellow. Cut the watermelon from the vine with a sharp knife.'];
 
 
 
 
 return Padding(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor:  Color.fromARGB(255, 18, 118, 196),
          radius: 12,
          child: Text("${index + 1}"),
        ),
        Column(children: [
     SizedBox(
      width: 270,
      child: Text(" ${Stepsinfo[index]}",maxLines: 9,style: TextStyle(fontSize: 15,color: AppColor.kTextColorFarming,fontWeight: FontWeight.bold),))
        ],),
      ],
    ),
  );
}
