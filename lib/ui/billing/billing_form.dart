import 'package:flutter/material.dart';

class BillingForm extends StatefulWidget {
 BillingForm({Key key}) : super(key: key);

  @override 
  _BillingFormState createState() => _BillingFormState();
}

class _BillingFormState extends State<BillingForm> {
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
                      labelText: 'Enter pre-paid meter number',
                      icon: Icon(Icons.email)),
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
                                  _formKey.currentState.save();     
                              }
                                                   

                            },
                            child: Text('SEND REQUEST'),
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