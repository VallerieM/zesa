import 'package:flutter/material.dart';

class VandalismForm extends StatefulWidget {
  VandalismForm({Key key}) : super(key: key);

  @override
  _VandalismFormState createState() => _VandalismFormState();
}

class _VandalismFormState extends State<VandalismForm> {
  final _formKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Your name',
                  icon: Icon(Icons.person)),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Required field';
                  }
                  return null;
                },
              ),
              SizedBox(height: 25), 
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Message', icon: Icon(Icons.email)),
                maxLines: 3,
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
                             
                            },
                            child: Text('SEND'),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            splashColor: Colors.grey,
                          ),
        
                        ],
                      )
                    )
            ],),
        ),
        ),
        );
  }
}