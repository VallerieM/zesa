import 'package:flutter/material.dart';

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
      ),
    );
}
}