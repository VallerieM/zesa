import 'package:flutter/material.dart';

import '../ui/registration_page/registartion_form.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true ,
          title: Text('REGISTRATION', textAlign: TextAlign.center),
          leading: new IconButton(
             icon: new Icon(Icons.arrow_back),
             onPressed: () {},
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: ListView(
            children: <Widget>[
              RegistrationForm()
            ],
          ),
        ),
      ),
    );
  }
}