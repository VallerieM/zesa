import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  RegistrationForm({Key key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
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
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter your email',
                        icon: Icon(Icons.email)),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
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
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirm password',
                        icon: Icon(Icons.lock)
                        ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
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
                            },
                            child: Text('REGISTER'),
                            color: Theme.of(context).accentColor,
                            textColor: Colors.white,
                            splashColor: Colors.grey,
                          ),
        
                        FlatButton(
                          textColor: Colors.red,
                          onPressed: () {
                            /*...*/
                          },
                          child: Text(
                            "Already have an account",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        )
                        ],
                      )
                    )
                ],
              ),
       ),
      ),
    );
  }
}