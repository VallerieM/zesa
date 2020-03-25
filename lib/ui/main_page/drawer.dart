import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {

  Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.scaleDown,
              image: AssetImage('assets/images/foto.png')
              ),
      ),
      child: Stack(
        children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
  }

  Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
 }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(icon: Icons.person,text: 'My Account', onTap: () =>{}),
          Divider(),
          _createDrawerItem(icon: Icons.collections_bookmark, text: 'Fault Reports',onTap: () =>{}),
          _createDrawerItem(icon: Icons.face, text: 'Complaints', onTap: () =>{}),
          _createDrawerItem(icon: Icons.account_box, text: 'Complements', onTap: () =>{}),
          _createDrawerItem(icon: Icons.stars, text: 'Report Vandalism', onTap: () =>{}),
          Divider(),
          _createDrawerItem(icon: Icons.bug_report, text: 'Report Corruption', onTap: () =>{}),
          ListTile(
            title: Text('LOGOUT',style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500)
                    ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

