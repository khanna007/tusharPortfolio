import 'package:flutter/material.dart';
import 'package:myportfolio/drawer/drawerWidget.dart';
import 'package:myportfolio/profilePage/ProfileInfo.dart';
import 'package:myportfolio/socialInfo/SocialInfo.dart';
import 'package:myportfolio/utils/ResponsiveWidget.dart';
import 'package:myportfolio/work/Work.dart';
import 'package:myportfolio/workscreens/workScreens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tushar khanna',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
//        appBar: AppBar(
//          elevation: 0.0,
//          backgroundColor: Colors.blue[900],
//        ),
//        drawer: DrawerWidget(),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.red])),
            child: AnimatedPadding(
              duration: Duration(seconds: 1),
              padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
              child: ResponsiveWidget(
                largeScreen: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        WorkScreens(),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    ProfileInfo(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                    ),
                    Work(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
