import 'package:flutter/material.dart';

class LandingImage extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("android/assets/images/billing.png, "),
              fit: BoxFit.cover,
            )
          ),
        )
      ],
    );
    //return Image.asset('android/assets/images/billing.png', width: 300, height: 400);
  }
}