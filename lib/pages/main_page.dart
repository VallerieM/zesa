import 'package:flutter/material.dart';

import '../ui/main_page/drawer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true ,
          title: Text('myPower', textAlign: TextAlign.center),
        ),
        drawer: AppDrawer(),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 70.0, 15.0, 10.0),
                child: Text('ZETDC myPower Dashboard', style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ))
            ),

            Expanded(
              child: GridView.count(
                primary: false,
                crossAxisSpacing: 10,
                padding: const EdgeInsets.all(20),
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('He\'d have you all unravel at the'),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Heed not the rabble'),
                    color: Colors.teal[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Sound of screams but the'),
                    color: Colors.teal[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Who scream'),
                    color: Colors.teal[400],
                  ),
                ],
              ),
            )
            ],
          ),
        ),
     ),
   );
  }
}