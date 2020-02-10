import 'package:flutter/material.dart';
import 'package:zetdc/pages/billing_page.dart';
import 'package:zetdc/pages/purchase_page.dart';
import 'package:zetdc/pages/track_application_page.dart';
//import 'package:zetdc/pages/vacancies_tenders_page.dart';
import 'package:zetdc/ui/main_page/applications_image.dart';
import 'package:zetdc/ui/main_page/billing_image.dart';
import 'package:zetdc/ui/main_page/drawer.dart';
//import 'package:zetdc/ui/main_page/outage_image.dart';
import 'package:zetdc/ui/main_page/purchase_image.dart';
//import 'package:zetdc/ui/main_page/tenders_image.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
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
                  child: Text('ZETDC myPower Dashboard',
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))),
              Expanded(
                child: GridView.count(
                  primary: false,
                  crossAxisSpacing: 10,
                  padding: const EdgeInsets.all(20),
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    // Container(
                    //   margin: const EdgeInsets.all(0.0),
                    //   padding: const EdgeInsets.all(0),
                    //   decoration: myBoxDecoration(),
                    //   child: Column(
                    //     children: <Widget>[
                    //       Container(
                    //         width: 120,
                    //         height: 80,
                    //         child: OutageImage(),
                    //       ),
                    //       new FlatButton(
                    //         textColor: Colors.black,
                    //         onPressed: () {},
                    //         child: Text(
                    //           "SUBSCRIBE",
                    //           style: TextStyle(
                    //               fontSize: 15,
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.black),
                    //         ),
                    //       ),
                    //       // new Text('SUBSCRIBE', style: new TextStyle(
                    //       // color: Colors.black,
                    //       // fontSize: 15,
                    //       // fontWeight: FontWeight.bold
                    //       // )),
                    //       new Text('Outage Notifications'),
                    //     ],
                    //   ),
                    // ),
                    Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.all(0),
                      decoration: myBoxDecoration(),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 80,
                            child: BillingImage(),
                          ),
                          new FlatButton(
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BillingPage()),
                              );
                            },
                            child: Text(
                              "SUBSCRIBE",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          new Text('Billing Notifications'),
                        ],
                      ),
                      // color: Colors.purple[200],
                    ),
                    // Container(
                    //   margin: const EdgeInsets.all(0.0),
                    //   padding: const EdgeInsets.all(0),
                    //   decoration: myBoxDecoration(),
                    //   child: Column(
                    //     children: <Widget>[
                    //       Container(
                    //         width: 120,
                    //         height: 80,
                    //         child: VacanciesTendersImage(),
                    //       ),
                    //       new FlatButton(
                    //         textColor: Colors.black,
                    //         onPressed: () {
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) =>
                    //                     VacanciesTendersPage()),
                    //           );
                    //         },
                    //         child: Text(
                    //           "SUBSCRIBE",
                    //           style: TextStyle(
                    //               fontSize: 15,
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.black),
                    //         ),
                    //       ),
                    //       new Text('Vacancies and Tenders'),
                    //     ],
                    //   ),
                    //   // color: Colors.purple[300],
                    // ),
                    Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.all(0),
                      decoration: myBoxDecoration(),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 80,
                            child: TrackApplicationsImage(),
                          ),
                          new FlatButton(
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TrackApplicationPage()),
                              );
                            },
                            child: Text(
                              "Track Applications",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          new Text('Applications for supply'),
                        ],
                      ),
                      // color: Colors.purple[400],
                    ),
                     Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.all(0),
                      decoration: myBoxDecoration(),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 140,
                            height: 80,
                            child: PurchaseImage(),
                          ),
                          new FlatButton(
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PurchasePage()),
                              );
                            },
                            child: Text(
                              "PURCHASE",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          new Text('Buy Zesa tokens'),
                        ],
                      ),
                      // color: Colors.purple[300],
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

  myBoxDecoration() {
    return BoxDecoration(
        border: Border.all(
      color: Colors.purple,
      width: 1,
    ));
  }
}
