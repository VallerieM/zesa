import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:zetdc/state/BillingState.dart';

import 'package:zetdc/utils/billing.dart';


import 'package:http/http.dart' as http;

Future<Token> fetchTokens({String meterNo}) async {
  if (meterNo != null) {
    final response = await http
        .post('http://172.16.13.12:5050/selfservice/viewtokens/$meterNo');

    if (response.statusCode == 200) {
      return Token.fromJson(json.decode(response.body)[0]);
    } else {
      throw Exception('Failed to load Token Data');
    }
  }
}

class TokenData extends StatefulWidget {
  TokenData({Key key}) : super(key: key);

  @override
  _TokenDataState createState() => _TokenDataState();
}

class _TokenDataState extends State<TokenData> {
  Future<Token> token;
  String meterNumber;

  @protected
  @mustCallSuper
  void didChangeDependencies() {
    this.meterNumber = BillingStateContainer.of(context).meterNumber;
    token = fetchTokens(meterNo: this.meterNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Token>(
        future: token,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text(
                    snapshot.data.msno,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green[800], fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: Text('Token',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(snapshot.data.token),
                ),
                ListTile(
                  title: Text('Date',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(snapshot.data.trn_TIMESTAMP),
                ),
                ListTile(
                  title: Text('Units',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('${snapshot.data.token_UNITS}'),
                ),
                 ListTile(
                  title: Text('Amount',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('${snapshot.data.token_AMOUNT}'),
                ),
              ],
            ));
          } else if (snapshot.hasError) {
            return Center(
                child: Text(
              snapshot.error.toString(),
              style: TextStyle(color: Colors.red),
            ));
          }
          // By default, show a loading spinner.
          if (this.meterNumber != null) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
