import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:AquaSavers/constant/colors.dart';

import '../../../../linkApi.dart';

class Pears extends StatelessWidget {
  const Pears({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('${StoreLink.imagesitems}/organic/Pearsback.jpg'),
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
            "Pears:",
            style: TextStyle(
              fontSize: 28,
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
          ),
           const SizedBox(
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
            height: 3,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 7,
            itemBuilder: (context, index) => steps(context, index),
          ),
        ]),
      ),
    );
  }));
}

importance(BuildContext context, int index) {
  final List<String> names = <String>['Rich in essential antioxidants.', "They can benefit a person's digestion.", 'They are also free from fat and cholesterol.'];

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
  final List<String> Stepsinfo = <String>['Dig a hole that’s twice the size of the root ball.', 'Avoid curling the roots around the hole – spread them evenly.', 'Fill in the hole with the richest soil on the bottom, planting the tree at the same level to 2″ higher than it grew in the nursery (you can usually see a soil line on the trunk.)', 'Water as you fill in the hole, tamping lightly to avoid air pockets. Mulch around the tree, but leave a 6 inch ring open at the trunk.',"To ensure that your tree gets a good start, prune off most or all of the branches and clip the central trunk to 4 to 5 feet just above a healthy looking bud.","This gives the roots time to establish themselves and grow without the stress of trying to nourish a lot of branches.","Fertilize very lightly in the spring or with just a few trace minerals such as azomite, colloidal phosphat or oyster shell sprinkled under mulch."];
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
