import 'package:flutter/material.dart';
import '../ui/registration_page/registration_form.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true ,
          title: Text('', textAlign: TextAlign.center),
          leading: new IconButton(
             icon: new Icon(Icons.arrow_back),
             onPressed: () {
               Navigator.pop(context);
             },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: ListView(
            children: <Widget>[
              Padding(
              padding: EdgeInsets.fromLTRB(80.0, 10.0, 15.0, 10.0),
                child: Text('Registration', style: new TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ))
            ),
              RegistrationForm()
            ],
          ),
        ),
      ),
    );
  }
}