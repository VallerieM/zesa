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
          title: Text('COMPLAINTS', textAlign: TextAlign.center),
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
                  child: Text('Send us your complaint',
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
              ComplaintsForm(),
              Padding(
                  padding: EdgeInsets.fromLTRB(70.0, 0.0, 15.0, 20.0),
                  child: Text(
                      'Email: pr@zetdc.co.zw, marketing@zetdc.co.zw',
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
    );
  }
}
