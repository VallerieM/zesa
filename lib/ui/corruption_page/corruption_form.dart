import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<bool> sentMail({Map<String, String> body}) async {
  final response = await http.post('http://10.0.2.2:4000/feedback/corruption',body:body);
  if(response.statusCode == 200){
    return true;
  } else {
    return false;
  }
}

class CorruptionForm extends StatefulWidget {
  CorruptionForm({Key key}) : super(key: key);

  @override
  _CorruptionFormState createState() => _CorruptionFormState();
}

class _CorruptionFormState extends State<CorruptionForm> {
  final _formKey = GlobalKey<FormState>();
  String _name;
  String _message;
  

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
                    labelText: 'Your name (Optional)',
                    icon: Icon(Icons.person)),
                    onSaved:(value) => _name = value,
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
                             _formKey.currentState.save();
                          Future<bool> resp;
                          resp = sentMail(body: {"name": "$_name","message" : "$_message"});
                          print(_name);
                          // Validate returns true if the form is valid, or false
                          // otherwise.
                          if (_formKey.currentState.validate()) {
                            
                            if(resp == true){
                              // If the form is valid, display a Snackbar.
                              Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text('Message sent ')));
                            } else{
                              Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text('Message not sent ')));
                            }
                            
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