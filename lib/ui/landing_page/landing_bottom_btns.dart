import 'package:flutter/material.dart';

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
            onPressed: () {},
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            splashColor: Colors.grey,
          ),
          OutlineButton(
            child: Text('LOGIN'),
            onPressed: () {}, //callback when button is clicked
            borderSide: BorderSide(
              color: Theme.of(context).accentColor, //Color of the border
              style: BorderStyle.solid, //Style of the border
              width: 1, //width of the border
            ),
          )
      ],
     ),
    );
  }
}