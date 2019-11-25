import 'package:flutter/material.dart';

class VacanciesTendersPage extends StatelessWidget {
  const VacanciesTendersPage({Key key}) : super(key: key);


  @override 
  Widget build(BuildContext context) { 
    return Container(
      child: Scaffold(
           appBar: AppBar(
          centerTitle: true ,
          title: Text('SUBSCRIBE', 
                  textAlign: TextAlign.center,
                  ),
          leading: new IconButton(
             icon: new Icon(Icons.arrow_back,),
             onPressed: () {
               Navigator.pop(context);
             },
          ),
        ),

         body: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[          
            Text('Subscribe to receive notifications about new vacancies and tender announcements.', style: new TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            )
            ),
            
            SizedBox(height: 30),
        ]
          )
         )
      ),
    );
  }
}