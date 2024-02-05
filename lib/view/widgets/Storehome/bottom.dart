import 'package:flutter/material.dart';

class bottomad extends StatelessWidget {
  const bottomad({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 2.0, right: 1, left: 1, bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: Color.fromARGB(255, 6, 60, 105)),
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        child: Container(
          height: 190,
          width: 340,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                   "assets/images/bannerstore.png"),
                // image: CachedNetworkImage(imageUrl: "imageUrl"),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
