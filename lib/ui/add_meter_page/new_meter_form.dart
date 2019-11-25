import 'package:flutter/material.dart';


class NewMeterForm extends StatefulWidget {
  NewMeterForm({Key key}) : super(key: key);

    @override 
  _NewMeterState createState() => _NewMeterState();
}

class _NewMeterState extends State<NewMeterForm> {
  final _formKey = GlobalKey<FormState>();

@override
 Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.0),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Account number',
                      icon: Icon(Icons.email)), 
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Last bill number',
                        icon: Icon(Icons.email)),
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
                            //  Navigator.push(
                             // context, 
                             // MaterialPageRoute(builder: (context) => ),
                             // );
                            },
                            child: Text('ADD'),
                            color: Theme.of(context).secondaryHeaderColor,
                            textColor: Colors.white,
                            splashColor: Colors.grey,
                          ),
  
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