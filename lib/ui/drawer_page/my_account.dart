import 'package:flutter/material.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key key}) : super(key: key);


  @override 
   Widget build(BuildContext context) {
     return Container(
       child: Scaffold(
          appBar: AppBar(
          centerTitle: true ,
          title: Text('MY ACCOUNT', textAlign: TextAlign.center),
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
        children: <Widget>[          
            Text('Your username', style: new TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
            Text('email@example.com', style: new TextStyle(
              color: Colors.black,
              fontSize: 20,
            )),
            SizedBox(height: 30),

              Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, or false
                              // otherwise.
                              // if (_formKey.currentState.validate()) {
                              //   // If the form is valid, display a Snackbar.
                              //   Scaffold.of(context)
                              //       .showSnackBar(SnackBar(content: Text('Processing Data')));
                              // }
                             // Navigator.push(
                            //  context, 
                             // MaterialPageRoute(builder: (context) => MainPage()),
                            //  );
                            },
                            child: Text('ADD METER'),
                            color: Theme.of(context).secondaryHeaderColor,
                            textColor: Colors.white,
                            splashColor: Colors.grey,
                          ),        
                        ],
                      )
                    )
          ],
      )
    ), 

      )
     );
   }
}