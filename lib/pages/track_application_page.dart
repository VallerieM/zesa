import 'package:flutter/material.dart';
import 'package:zetdc/ui/track_application/application.dart';
import 'package:zetdc/ui/track_application/track_application_form.dart';
import '../state/PjobState.dart';

class TrackApplicationPage extends StatelessWidget {
  const TrackApplicationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new PjobStateContainer(
          child: Container(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('TRACK APPLICATION', textAlign: TextAlign.center),
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListView(
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 0.0, 15.0, 0.0),
                              child: Text('Application Tracker',
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                          ApplicationForm(),
                          ApplicationData()
                        ])
                  ],
                )),
          ),

      ),
    );
  }
}
