import 'package:AquaSavers/linkApi.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/Berries.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/GrapeFruit.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/Grapes.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/Lime.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/Mangoes.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/Oranges.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/Peaches.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/Pears.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/Pineapple.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/Plums.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/apple.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/bannanes.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/kiwi.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/fruits/watermelon.dart';

class OrganicFarmingFruits extends StatelessWidget {
  const OrganicFarmingFruits({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar( // leading: Icon(Icons.menu_outlined),
        backgroundColor:Color.fromARGB(255, 19, 94, 26),
       
        title: Text("Fruits",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color:Colors.white,fontFamily: "PlayfairDisplay"),),
        centerTitle: true,
        ),
        drawer: DRAWERMAIN(),
       body:  Container(
      //    decoration: BoxDecoration(
        //    image: DecorationImage(
          //    image: AssetImage(AppImageAsset.BackgroundFruits),
            //  fit: BoxFit.cover,
            //),
          //),
          padding: EdgeInsets.all(10),
          child: Container(
            child: ListView(children: [
            
  
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: GridView(
                  children: [
                    InkWell(
                      onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Apples()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5, color:Color.fromARGB(166, 7, 127, 19),),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Apple.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Apples",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                    onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Bannanes()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Bannane.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Bananas",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                      onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Berries()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Berries.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Berries",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                     onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Grapes()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5,
                           color: Color.fromARGB(166, 7, 127, 19)
                           ),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Grapes.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Grapes",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                      onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Mangoes()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Mango.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Mangoes",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                     onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Oranges()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Orange.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Oranges",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                     onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Pears()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: const Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Pear.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Pears",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                   onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Pineapple()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/PineApple.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Pineapple",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                          onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Peaches()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Peaches.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Peaches",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                     
                         onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Plums()),
  );}, child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Plums.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Plums",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                         onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Kiwi()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Kiwi.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Kiwi",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                        onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const WaterMelon()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/WaterMelon.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Watermelon",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                         onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Lime()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/Lime.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Lime",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                          onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const GrapeFruit()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Color.fromARGB(166, 7, 127, 19)),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                child: Image.network('${StoreLink.imagesitems}/organic/GrapeFruit.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Grapefruit",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                  ],
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                ),
              ),
            ]),
          )),
    );
  }
}