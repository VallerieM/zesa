import 'package:flutter/material.dart';
import 'package:zetdc/ui/vandalism_page/vandalism_form.dart';

class VandalismPage extends StatelessWidget {
  const VandalismPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('REPORT VANDALISM', textAlign: TextAlign.center),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: Image.asset('android/assets/images/vandalism.png'),
                  ),
                  
              VandalismForm(),
              
            ],
          ),
        ),
      ),
    );
  }
}
