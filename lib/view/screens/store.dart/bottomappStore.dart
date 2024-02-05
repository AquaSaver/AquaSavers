import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:AquaSavers/view/screens/store.dart/Cart.dart';
import 'package:AquaSavers/view/screens/store.dart/Store.dart';

class StoreBottom extends StatefulWidget {
  const StoreBottom({super.key});

  @override
  State<StoreBottom> createState() => _StoreBottomState();
}

class _StoreBottomState extends State<StoreBottom> {
 List Screens = [
   
    Store(),
    Cart(),
  ];
  int _SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:Color.fromARGB(255, 64, 138, 228),
        animationDuration: Duration(milliseconds: 300),
        color: const Color.fromARGB(255, 8, 76, 133),
        buttonBackgroundColor: Colors.white,
        index: _SelectedIndex,
        items: [
         Column(
           children: [
             
            //Image.asset("assets/images/home.png"),
      Icon(Icons.home_sharp)
           ],
         ),

            Container(
            child: Image.asset("assets/images/cart.png"),
          ),
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
