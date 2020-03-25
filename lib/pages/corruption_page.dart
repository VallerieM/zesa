import 'package:flutter/material.dart';
import 'package:zetdc/ui/corruption_page/corruption_form.dart';

class CorruptionPage extends StatelessWidget {
  const CorruptionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('REPORT CORRUPTION', textAlign: TextAlign.center),
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
                  child: Text('',
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
              Image.asset('android/assets/images/corruption.png'),
              CorruptionForm(),
              
            ],
          ),
        ),
      ),
    );
  }
}
