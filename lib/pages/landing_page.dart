import 'package:flutter/material.dart';

import '../ui/landing_page/landing_image.dart';
import '../ui/landing_page/landing_bottom_btns.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            LandingImage(),
            SizedBox(height: 30),
            Text('Welcome to myPower', style: new TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: 30),
            LandingBtns()
          ],
        )
      ),
    );
  }
}