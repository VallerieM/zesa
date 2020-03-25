import 'package:flutter/material.dart';
import 'package:zetdc/pages/main_page.dart';
import 'package:zetdc/pages/registration_page.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your username',
                  icon: Icon(Icons.person)),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Required field';
                  }
                  return null;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  icon: Icon(Icons.lock)),
                   validator: (value) {
                        if (value.isEmpty) {
                          return 'Required field';
                        }
                        return null;
                      },
              ),
             Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, or false
                              // otherwise.
                              if (_formKey.currentState.validate()) {
                                // If the form is valid, display a Snackbar.
                                Scaffold.of(context)
                                    .showSnackBar(SnackBar(content: Text('Processing Data')));
                              }
                              Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => MainPage()),
                              );
                            },
                            child: Text('LOGIN'),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            splashColor: Colors.grey,
                          ),
        
                        FlatButton(
                          textColor: Colors.red,
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => RegistrationPage()),
                              );
                            /*...*/
                          },
                          child: Text(
                            "Do not have an account",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        )
                        ],
                      )
                    )
            ],),
        ),
        ),
        );
  }
}