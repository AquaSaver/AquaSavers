import 'dart:ui';

import 'package:AquaSavers/linkApi.dart';
import 'package:flutter/material.dart';
import 'package:AquaSavers/constant/colors.dart';

class Grapes extends StatelessWidget {
  const Grapes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('${StoreLink.imagesitems}/organic/Grapesback.jpg'),
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
            "Grapes:",
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
            itemCount: 13,
            itemBuilder: (context, index) => steps(context, index),
          ),
        ]),
      ),
    );
  }));
}

importance(BuildContext context, int index) {
  final List<String> names = <String>['Vitamins', 'Help in eye problems', 'Help protect against cancer'];

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
  final List<String> Stepsinfo = <String>['Grapevines should be planted in early spring after the date of the last hard freeze has passed. Vines are usually purchased as dormant, bare-root plants.', 'Most grape varieties are self-fertile. To be sure, ask when you are buying vines if you will need more than one plant for pollination.', 'Select a site with full sun. If you don’t have a spot with full sun, make sure it at least gets morning sun. A small amount of afternoon shade won’t hurt. Your soil needs to be deep, well-drained, and loose. You also need good air circulation.', 'Grape vines will need to be trained to some sort of support to grow upward. This will also cut the risk of disease. The support needs to be in place at planting.','One option is a sturdy trellis or arbor. The arbor may have two, four or six posts, depending on whether it’s attached to the house or another structure. The top can be secured with 2-inch by 4-inch wooden slats that hold the arbor together and topped with 1-inch by 2-inch wood pieces to create the latticework for the vines to grow on. You may also need corner braces to secure the whole structure. Grow the grapes, one per post, selecting the strongest cane. Allow it to grow to the top of the post the first year, securing it to the post as it grows. ','If you are low on free space, try growing grapes on a stake. Pound in a sturdy stake next to the grapevine and securely attach it. Keep the vine growing vertically. Let the vine grow to the top of the stake the first year, then top it. Allow 4 to 5 side canes to grow. Remove all the rest.','Before planting grapevines, soak their roots in water for two or three hours.','Space vines 6 to 10 feet apart (16 feet for muscadines).','For each vine, dig a planting hole 12 inches deep and 12 inches wide. Fill with 4 inches of topsoil. Trim off broken roots and set the vine into the hole slightly deeper than it grew in the nursery. Cover the roots with 6 inches of soil and tamp down. Fill with the remaining soil, but don’t tamp this down.','Water at time of planting.','Do not fertilize in the first year unless you have problem soil. Fertilize lightly in the second year of growth.','Use mulch to keep an even amount of moisture around the vines.','A mesh net is useful in keeping birds away from budding fruit.'];
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
