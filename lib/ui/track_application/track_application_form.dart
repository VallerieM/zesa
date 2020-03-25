import 'package:flutter/material.dart';
import 'package:zetdc/state/PjobState.dart';


class ApplicationForm extends StatefulWidget {
 ApplicationForm({Key key}) : super(key: key);

  @override 
  _ApplicationFormState createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationForm> {
  final _formKey = GlobalKey<FormState>();
  String _pjobNum;
@override
  Widget build(BuildContext context) {
    final pjobState = PjobStateContainer.of(context,false);
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
                      labelText: 'Enter PJOB number',
                      icon: Icon(Icons.email)),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Required field';
                      }
                      return null;
                    },
                    onSaved: (value)  => _pjobNum = value,
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
                       
                              pjobState.updatePjobNumber(pjob:_pjobNum);

                            },
                            child: Text('TRACK'),
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