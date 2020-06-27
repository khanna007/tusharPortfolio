import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                "Tushar",
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            currentAccountPicture: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.white,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFAA572A), Color(0xFFD94D00)],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Color(0xFFB15A2A),
            ),
            title: Text('Home',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
//          ListTile(
//            leading: Icon(
//              FontAwesomeIcons.pencilAlt,
//              color: Color(0xFFB15A2A),
//              size: 18,
//            ),
//            title: Text('Update Profile',
//                style: TextStyle(
//                    fontFamily: 'Helvetica',
//                    color: Colors.black,
//                    fontSize: 16,
//                    fontWeight: FontWeight.w500)),
//            onTap: () {
//              Navigator.pop(context);
//              Redirect().cupertiono(context, UpdateProfile());
//            },
//          ),
//          ListTile(
//            leading: Icon(
//              FontAwesomeIcons.idCard,
//              color: Color(0xFFB15A2A),
//            ),
//            title: Text('Test Results',
//                style: TextStyle(
//                    fontFamily: 'Helvetica',
//                    color: Colors.black,
//                    fontSize: 16,
//                    fontWeight: FontWeight.w500)),
//            onTap: () {
//              Navigator.pop(context);
//            },
//          ),
////          ListTile(
////            leading: Icon(
////              Icons.notifications,
////              color: Color(0xFFB15A2A),
////            ),
////            title: Text(
////              'Notifications',
////            ),
////          ),
//          Divider(
//            thickness: 1.0,
//          ),
//          ListTile(
//            leading: Icon(
//              Icons.lock,
//              color: Color(0xFFB15A2A),
//            ),
//            title: Text('Privacy Policy',
//                style: TextStyle(
//                    fontFamily: 'Helvetica',
//                    color: Colors.black,
//                    fontSize: 16,
//                    fontWeight: FontWeight.w500)),
//            onTap: () {
//              Navigator.pop(context);
//            },
//          ),
//          ListTile(
//            leading: Icon(
//              Icons.library_books,
//              color: Color(0xFFB15A2A),
//            ),
//            title: Text('Terms & Conditions',
//                style: TextStyle(
//                    fontFamily: 'Helvetica',
//                    color: Colors.black,
//                    fontSize: 16,
//                    fontWeight: FontWeight.w500)),
//            onTap: () {
//              Navigator.pop(context);
//            },
//          ),
//          ListTile(
//            leading: Icon(
//              FontAwesomeIcons.signOutAlt,
//              color: Color(0xFFB15A2A),
//            ),
//            title: Text('Log Out',
//                style: TextStyle(
//                    fontFamily: 'Helvetica',
//                    color: Colors.black,
//                    fontSize: 16,
//                    fontWeight: FontWeight.w500)),
//            onTap: () {
//              Navigator.pop(context);
//            },
//          ),
//          Divider(
//            thickness: 1.0,
//          ),
//          ListTile(
//            title: Text(
//              'Version 1.0.0',
//            ),
//          ),
        ],
      ),
    );
  }
}
