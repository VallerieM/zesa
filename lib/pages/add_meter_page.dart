import 'package:flutter/material.dart';
import 'package:zetdc/ui/add_meter_page/new_meter_form.dart';

class AddMeterPage extends StatelessWidget {
  const AddMeterPage({Key key}) : super(key:key);

   @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true ,
          title: Text('NEW METER', textAlign: TextAlign.center),
          leading: new IconButton(
             icon: new Icon(Icons.arrow_back),
             onPressed: () {
               Navigator.pop(context);
             },
          ),
        ),

          body: Padding(
          padding: EdgeInsets.all(8.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 15.0, 10.0),
                child: Text('Post Paid', style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ))
            ), 
           NewMeterForm(),
            ]

      )
    ),
      ),
    );
}
}