import 'package:flutter/material.dart';
//import 'package:zetdc/ui/landing_page/background_image.dart';
//import '../ui/landing_page/landing_image.dart';
import '../ui/landing_page/landing_bottom_btns.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
children: <Widget>[
  Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("android/assets/images/billing.png"),
        fit: BoxFit.cover,
      ),
    ),
  ),
  Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
      backgroundColor: Colors.transparent,
    ),
    body: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[ 
          SizedBox(height: 400),         
            Text('Welcome to myPower', style: new TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: 20),
            LandingBtns()
          ],
      )
    ),
  )
],
    );
    // return new Material(
    //   child: Padding(
    //     padding: EdgeInsets.all(8.0),
    //     child: Column(
    //       children: <Widget>[
    //       LandingImage(),
    //         SizedBox(height: 30),
    //         Text('Welcome to myPower', style: new TextStyle(
    //           color: Colors.black,
    //           fontSize: 25,
    //           fontWeight: FontWeight.bold
    //         )),
    //         SizedBox(height: 30),
    //         LandingBtns()
    //       ],
    //     )
    //   ),
    // );
  }
}