import 'package:flutter/material.dart';
import 'package:zetdc/pages/complaints_page.dart';
import 'package:zetdc/pages/compliments_page.dart';
import 'package:zetdc/pages/login_page.dart';
import 'package:zetdc/pages/my_account_page.dart';
import 'package:zetdc/pages/vandalism_page.dart';

class AppDrawer extends StatelessWidget {
  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.scaleDown,
              image: AssetImage('android/assets/images/foto.png')),
        ),
        child: Stack(children: <Widget>[
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
          _createDrawerItem(
              icon: Icons.person,
              text: 'My Account',
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyAccountPage()),
                    )
                  }),
          Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'Fault Reports',
              onTap: () => {}),
          _createDrawerItem(
              icon: Icons.face,
              text: 'Complaints',
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ComplaintsPage()),
                    )
                  }),
          _createDrawerItem(
              icon: Icons.account_box,
              text: 'Compliments',
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ComplimentsPage()),
                    )
                  }),
          _createDrawerItem(
              icon: Icons.stars,
              text: 'Report Vandalism',
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VandalismPage()),
                    )
                  }),
          Divider(),
          _createDrawerItem(
              icon: Icons.bug_report,
              text: 'Report Corruption',
              onTap: () => {}),
          ListTile(
            title: Text('LOGOUT',
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
