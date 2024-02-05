import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:AquaSavers/constant/colors.dart';

import '../../../../linkApi.dart';

class Pineapple extends StatelessWidget {
  const Pineapple({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('${StoreLink.imagesitems}/organic/PineAppleback.jpg'),
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
            "Pineapple:",
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
            itemCount: 4,
            itemBuilder: (context, index) => importance(context, index),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(
              height: 2,
            ),
          ),  const SizedBox(
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
            itemCount: 14,
            itemBuilder: (context, index) => steps(context, index),
          ),
        ]),
      ),
    );
  }));
}

importance(BuildContext context, int index) {
  final List<String> names = <String>['Help in muscle soreness', 'Help in sinus infections', 'Help shorten viral and bacterial infections', 'Strengthen your bones'];

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
  final List<String> Stepsinfo = <String>['Twist the leaves off the top of a fresh pineapple to separate the fruit from the crown. Leave the crown to dry for 1 week.', 'Set the dried pineapple crown in a glass of water and place it in indirect light to grow roots.', 'Plant the crown in well-draining soil once the roots are about 3 inches (7 cm) long.', 'Place your pineapple plant in a sunny window that gets direct light, watering it when the soil is dry.',"Pick out a fresh pineapple. Choose a pineapple with perky green leaves that have not turned yellow or brown. The skin on the fruit should be golden brown and have a little bit of give when you squeeze it. Smell the pineapple to see if it's ripe, too. It should emit a sweet, heady smell.","Your pineapple needs to be ripe in order to grow into a plant, so make sure it isn't underripe.","An underripe pineapple is usually very green, hard, and has a faint smell.","Check that your pineapple isn't overripe, too. Overripe pineapples are easy to squish and often have wrinkled skin. Tug gently at the leaves, too. If they come right off, the pineapple is too ripe to plant.","Make sure the pineapple doesn't have scale insects around the base of the leaves. They look like small grayish black spots.","Twist the leaves off the top of the pineapple. Grasp the body of the pineapple with one hand and use your other to grab the base of the leaves. Simply twist the leaves to pull them off the pineapple. You are now left with the crown, or stem, of the pineapple, and the pineapple fruit.If you're having trouble twisting off the crown, slice off the top of the pineapple with a knife. Then, cut off any excess fruit around the crown.","Plant the crown in the pot once its roots are 3 inches (7 cm) long. When the stem has lots of long, thick roots, it’s time to put it in soil. Poke a hole into the soil with your fingers and nestle the pineapple crown inside. Make sure that the base of the leaves are just above soil level. Then, press the soil firmly around the base of the stem and water it thoroughly.","Set the planted pineapple in bright light and keep its soil moist. Your new pineapple plant needs a warm, sunny, and humid environment to grow big and strong. Let it adjust to bright, indirect light for about 2 to 3 weeks before moving your plant to a place where it gets at least 6 hours of direct light. Water it about once a week, or when the top 1 to 2 inches (2-5 cm) of soil are dry.[10] If you live in a warm climate, keep the pot outside if you prefer. When temperatures start to drop below 60° F (15° C), take your pineapple plant inside.To help your plant root faster, make a mini-greenhouse over its pot. Simply slip a plastic bag over the top of the pot, removing it wFertilize your pineapple plant about once a month. Giving your plant nutritious fertilizer helps it grow strong. In the spring and summer, fertilize it once or twice a month with water-soluble fertilizer. In the fall and winter, feed it only once a month.[11]Pineapple plants generally prefer fertilizer with a 10-10-10 ratio of nitrogen, phosphorus, and potassium.when you water.","Fertilize your pineapple plant about once a month. Giving your plant nutritious fertilizer helps it grow strong. In the spring and summer, fertilize it once or twice a month with water-soluble fertilizer. In the fall and winter, feed it only once a month.[11] Pineapple plants generally prefer fertilizer with a 10-10-10 ratio of nitrogen, phosphorus, and potassium.","Wait for flowers and fruit to grow in 1 to 3 years. Be patient, as it can take several years for your plant to grow the flowers that develop into a juicy pineapple. As you continue to water and care for your plant, eventually a red cone will appear from the center of the leaves. It will be followed by blue flowers and eventually a tiny, budding fruit. The pineapple fruit takes about six months to fully develop.[12] The pineapple fruit grows from the flower, above ground, in the center of the plant. When the pineapple fruit is ripe and ready to be harvested, cut it off from the stem, just below the base of the fruit. Don’t cut your pineapple off before it’s ripe, as it won’t ripen once it’s off the stem.",""];
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
      child: Text(" ${Stepsinfo[index]}",maxLines: 19,style: TextStyle(fontSize: 15,color: AppColor.kTextColorFarming,fontWeight: FontWeight.bold),))
      ],
    ),
  ]));
}
