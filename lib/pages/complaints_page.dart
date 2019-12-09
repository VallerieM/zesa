import 'package:flutter/material.dart';
import 'package:zetdc/ui/complaints_page/complaints_form.dart';

class ComplaintsPage extends StatelessWidget {
  const ComplaintsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('COMPLAINT DETAILS', textAlign: TextAlign.center),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(30.30),
          child: ListView(
            children: <Widget>[
              Image.asset('android/assets/images/complaints.jpg', width: 150, height: 150,), 
              Padding(
                 // padding: EdgeInsets.fromLTRB(20.0, 10.0, 15.0, 10.0),
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                                      
                  child: Text('Send us your complaint today',
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          
                          fontWeight: FontWeight.bold))),
                           
              ComplaintsForm(),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
