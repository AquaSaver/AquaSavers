import 'dart:ui';

import 'package:AquaSavers/linkApi.dart';
import 'package:flutter/material.dart';
import 'package:AquaSavers/constant/colors.dart';

class Oranges extends StatelessWidget {
  const Oranges({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('${StoreLink.imagesitems}/organic/Orangeback.jpg'),
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
            "Oranges:",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
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
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) => importance(context, index),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(
              height: 2,
            ),
          ),const SizedBox(
            height: 10,
          ),
          Text(
            "Steps",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
         
          ),
          const SizedBox(
            height: 2,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 11,
            itemBuilder: (context, index) => steps(context, index),
          ),
        ]),
      ),
    );
  }));
}

importance(BuildContext context, int index) {
  final List<String> names = <String>['Vitamin C', 'Vitamin B1', 'Good source of fiber'];

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
  final List<String> Stepsinfo = <String>['Choose a sunny spot with well drained soil. Enrich the soil with Yates Dynamic Lifter Organic Plant Food. If the soil is clay based, improve soil structure by adding gypsum and forking in well. In poorly drained areas, citrus can also be planted in a raised mound of free-draining soil.', 'Dig the planting hole twice as wide and to the same depth as the root-ball. Remove the plant from the container, gently tease the roots and cut away any circled or tangled roots. ', "Position in hole and backfill with soil, gently firming down. Form a raised doughnut shaped ring of soil around the outer edge of the plant's root zone. This helps keep water where it's needed. Always water in well after planting to settle the soil around the roots and keep the soil moist for several weeks while the new plant establishes.", 'Mulch around the base with organic mulch like woodchip or pea straw, keeping it away from the trunk.','Water deeply, once or twice a week, depending on weather conditions.',"During the growing and flowering/fruiting season, feed with Yates Thrive Citrus & Fruit Granular Plant Food. Throughout the year, apply Yates Thrive Natural Fish & Seaweed+ Plant Food Concentrate.","Choose a pot at least 500mm wide. Position in full sun and fill with quality potting mix, such as Yates Nature's Way Organic Citrus & Fruit Mix. TIP: Consider placing the pot on wheels if you live in a cold area, so it can be easily moved inside or to a sunnier and more protected spot in winter.","Remove the plant from the container, gently tease the roots and cut away any circled or tangled roots.","Position in hole and backfill with potting mix, gently firming down. Water in well.","Water deeply, 2-3 times during the week, depending on weather conditions.","During the growing and flowering/fruiting season, feed weekly with Yates Thrive Citrus Liquid Plant Food. Throughout the year apply Yates Thrive Natural Fish Seaweed+ Plant Food Concentrate."];
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
