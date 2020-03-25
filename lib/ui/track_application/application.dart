import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:zetdc/state/PjobState.dart';
import 'package:zetdc/utils/pjob_data.dart';

import 'package:http/http.dart' as http;

Future<Pjob> fetchPjob({String pjobNumber}) async {
  if (pjobNumber != null) {
    final response = await http
        .post('http://172.16.13.12:5050/selfservice/job/trackjob/$pjobNumber');
    if (response.statusCode == 200) {
      return Pjob.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Application Data');
    }
  }
}

class ApplicationData extends StatefulWidget {
  ApplicationData({Key key}) : super(key: key);

  @override
  _ApplicationDataState createState() => _ApplicationDataState();
}

class _ApplicationDataState extends State<ApplicationData> {
  Future<Pjob> pjob;
  String pjobNumb;

  @protected
  @mustCallSuper
  void didChangeDependencies() {
    this.pjobNumb = PjobStateContainer.of(context).pjobNumnber;
    pjob = fetchPjob(pjobNumber: this.pjobNumb);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Pjob>(
        future: pjob,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text(
                    snapshot.data.desc_EST,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green[800], fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: Text('Customer Name',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(snapshot.data.customer_NAME),
                ),
                ListTile(
                  title: Text('Address',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(snapshot.data.address),
                ),
                ListTile(
                  title: Text('Depot',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(snapshot.data.depot),
                ),
              ],
            ));
          } else if (snapshot.hasError) {
            return Center(
                child: Text(
              "ERROR:Check your Pjob Number",
              style: TextStyle(color: Colors.red),
            ));
          }
          // By default, show a loading spinner.
          if (this.pjobNumb != null) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
