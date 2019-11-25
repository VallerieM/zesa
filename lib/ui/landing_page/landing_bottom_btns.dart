import 'package:flutter/material.dart';
import 'package:zetdc/pages/login_page.dart';
import 'package:zetdc/pages/registration_page.dart';

class LandingBtns extends StatelessWidget {
  const LandingBtns({Key key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
          RaisedButton(
            child: Text("REGISTER"),
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => RegistrationPage()),
              );
            },
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            splashColor: Colors.grey,
          ),
          OutlineButton(
            textColor: Colors.white,
            child: Text('LOGIN'),
            onPressed: () {
              Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => LoginPage()),
                              );
            }, //callback when button is clicked
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor, //Color of the border
              style: BorderStyle.solid, //Style of the border
              width: 1, //width of the border
            ),
          )
      ],
     ),
    );
  }
  }