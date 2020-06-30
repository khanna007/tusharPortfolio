import 'package:flutter/material.dart';
import 'package:myportfolio/utils/ResponsiveWidget.dart';
import 'package:myportfolio/utils/style.dart';

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.deepOrange,
//            borderRadius: BorderRadius.circular(40),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("tush.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hi there! My name is",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.white),
      ),
      Text(
        "Tushar Khanna",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Row(
        children: <Widget>[
          Icon(
            Icons.mail,
            size: 30,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
          ),
          Text(
            "Tusharkhanna007@gmail.com",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(top: 10),
      ),
      Row(
        children: <Widget>[
          Icon(
            Icons.phone,
            size: 30,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
          ),
          Text(
            "91- 7338768387 / 8800160243",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "I am app developer having an experince of 2.5 years\n"
        "I am also a volenteer of Laraverl Delhi.\n"
        "Also take part in meetups like android flutter laravel and Ng-India.\n"
        "I am also part of seekgeeks community and contribute code in it.\n"
        "My Quote - make your life easier while coding ",
        softWrap: true,
        textScaleFactor: 1.5,
        style: Style.text3,
      ),
      SizedBox(
        height: 20,
      ),
//      RaisedButton(
//        child: Container(
//          child: Row(
//            children: <Widget>[
//              Icon(
//                Icons.file_download,
//                color: Colors.white,
//              ),
//              Text(
//                "Download Resume",
//                style: Style.resume,
//              ),
//            ],
//          ),
//        ),
//      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData,
        ],
      ),
    );
  }
}
