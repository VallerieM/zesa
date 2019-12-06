import 'package:flutter/material.dart';
import 'package:zetdc/ui/billing/billing_form.dart';

class BillingPage extends StatelessWidget {
  const BillingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new  Container(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('BILLING', textAlign: TextAlign.center),
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
                              child: Text('Request token',
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                          BillingForm(),
                        ])
                  ],
                )),
          ),
      
    );
  }
}
