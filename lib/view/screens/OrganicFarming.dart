import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:AquaSavers/view/screens/OrganicFarmvege.dart';
import 'package:AquaSavers/view/screens/organicfarmingfruits.dart';

class OrganicFarming extends StatefulWidget {
  const OrganicFarming({super.key});

  @override
  State<OrganicFarming> createState() => _OrganicFarmingState();
}

class _OrganicFarmingState extends State<OrganicFarming> {
  List Screens = [
   
    OrganicFarmingFruits(),
     OrganicFarmingVegetables(),
  ];
  int _SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 44, 221, 76),
        animationDuration: Duration(milliseconds: 300),
        color: Color.fromARGB(255, 19, 94, 26),
        buttonBackgroundColor: Colors.white,
        index: _SelectedIndex,
        items: [
             Image.asset("assets/images/fruits.png"),
            Image.asset("assets/images/vegetables.png"),
        ],
        onTap: (index) {
          setState(() {
            _SelectedIndex=index;
          
          });
        },
      ),
      body: Screens[_SelectedIndex],
    );
  }
}
