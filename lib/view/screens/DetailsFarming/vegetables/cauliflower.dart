import 'dart:ui';

import 'package:AquaSavers/linkApi.dart';
import 'package:flutter/material.dart';
import 'package:AquaSavers/constant/colors.dart';

class Cauliflower extends StatelessWidget {
  const Cauliflower({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:NetworkImage('${StoreLink.imagesitems}/organic/Cauliflowerback.jpg'),
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
      onTap: () {},
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
            "Cauliflower:",
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
            itemCount: 5,
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
            itemCount: 4,
            itemBuilder: (context, index) => steps(context, index),
          ),
        ]),
      ),
    );
  }));
}

importance(BuildContext context, int index) {
  final List<String> names = <String>['Vitamin k', 'Prevent cancer', 'Prevent constipation',"Digestive tract","Lowering the risk of colon cancer"];

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
  final List<String> Stepsinfo = <String>["Sow seeds in rows 3 to 6 inches apart and up to ½ inch deep.","Set plants 18 to 24 inches apart with 30 inches between rows.","In early spring, be ready to protect plants from frost by covering them with old milk jugs, if necessary.","Water consistently during germination and growth."];
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 18, 118, 196),
          radius: 12,
          child: Text("${index + 1}"),
        ),
        Column(
          children: [
            SizedBox(
                width: 270,
                   child: Text(" ${Stepsinfo[index]}",maxLines: 9,style: TextStyle(fontSize: 15,color: AppColor.kTextColorFarming,fontWeight: FontWeight.bold),))
  
          ],
        ),
      ],
    ),
  );
}
