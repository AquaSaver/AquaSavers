import 'package:AquaSavers/linkApi.dart';
import 'package:AquaSavers/view/screens/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/BellPeppers.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Borocli.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Carrot.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Cucumbers.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/EggPlant.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/GreenBeans.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Kale.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Onions.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Peas.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Spinach.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/Tomato.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/cabbage.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/cauliflower.dart';
import 'package:AquaSavers/view/screens/DetailsFarming/vegetables/lettuce.dart';

class OrganicFarmingVegetables extends StatelessWidget {
  OrganicFarmingVegetables({super.key}) {}

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       appBar: AppBar( // leading: Icon(Icons.menu_outlined),
        backgroundColor:Color.fromARGB(255, 19, 94, 26),
       
        title: Text("Vegetables",style: TextStyle(fontSize: 25,color:Colors.white,fontFamily: "PlayfairDisplay",fontWeight: FontWeight.bold),),
        centerTitle: true,
        ),
        drawer: DRAWERMAIN(),
      backgroundColor: Colors.white,
      body:  Container(
        //  decoration: BoxDecoration(
         //   image: DecorationImage(
           //   image: AssetImage(AppImageAsset.BackgroundVegetables),
             // fit: BoxFit.cover,
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
    MaterialPageRoute(builder: (context) => const Tomato()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5, color:Color.fromARGB(166, 7, 127, 19)),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/tomato.png'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Tomato",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                       onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const BellPeppers()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/BellPepper.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Bell Peppers",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                       onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Borocoli()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5, color:Color.fromARGB(166, 7, 127, 19)),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/Brocoli.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Boroccli",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                    onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Carrot()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/Carrot.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Carrot",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                        onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Spinach()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/Spinach.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Spinach",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                        onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Kale()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/Kale.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Kale",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                      onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Lettuce()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/Lettuce.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Lettuce",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                       onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Cabbage()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/GreenCabbage.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Cabbage",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                      onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Cauliflower()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/Cauliflower.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Cauliflower",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                       onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const GreenBeans()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/GreenPeans.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Green beans",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                       onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Peas()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/GreenPeas.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Peas",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                       onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const EggPlant()),
  );},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color:Color.fromARGB(166, 7, 127, 19)),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/EggPlant.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Eggplant",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                       onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Onions()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/Onion.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Onions",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    InkWell(
                        onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Cucumbers()),
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
                                child: Image.network('${StoreLink.imagesitems}/organic/Cucumber.jpg'),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Cucumbers",
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
