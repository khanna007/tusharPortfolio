import 'package:flutter/material.dart';
import 'package:myportfolio/utils/ResponsiveWidget.dart';

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
        style: TextStyle(color: Colors.orange),
      ),
      Text(
        "Tushar\nKhanna",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "I am an Application developer having experince of 2 years\n"
            "I am also a volenteer of Laraverl Delhi.\n"
            "Also take parts in meetups like android flutter laravel and Ng-India.\n"
            "I am also part of seekgeeks community and contribute code in it",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),
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
          profileData
        ],
      ),
    );
  }
}