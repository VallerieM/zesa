import 'package:flutter/material.dart';
import '../ui/login_page/loginpage_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('LOGIN', textAlign: TextAlign.center),
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
              LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}