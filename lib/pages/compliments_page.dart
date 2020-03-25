import 'package:flutter/material.dart';
import 'package:zetdc/ui/compliments_page/compliments_form.dart';

class ComplimentsPage extends StatelessWidget {
  const ComplimentsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('COMPLIMENTS', textAlign: TextAlign.center),
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
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 15.0, 10.0),
                  child: Text('Client Convenience through ICT',
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
              
              ComplimentsForm(),
              
            ],
          ),
        ),
      ),
    );
  }
}
