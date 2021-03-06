import 'package:flutter/material.dart';
import 'package:zetdc/pages/landing_page.dart';
//import 'package:zetdc/pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LandingPage(),
      theme: ThemeData(
       
       // Define the default brightness and colors.
        primarySwatch: Colors.purple,
        brightness: Brightness.light,
        primaryColor: Colors.purple[800],
        accentColor: Colors.cyanAccent[700],
        secondaryHeaderColor: Colors.red,

        //Define font family
        fontFamily: 'Montserrat',

        // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),

      ),
    );
  }
}


