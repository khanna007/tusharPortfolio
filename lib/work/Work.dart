import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/utils/ResponsiveWidget.dart';
import 'package:myportfolio/utils/style.dart';

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: GridView.count(
        childAspectRatio: 2,
        crossAxisCount: 3,
        shrinkWrap: true,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              showHireJobsDialog(context);
            },
            child: Card(
              elevation: 10.0,
              child: Container(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.luminosity,
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage("hiremilitaryjobs.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showHireMilitaryInternDialog(context);
            },
            child: Card(
              elevation: 10.0,
              child: Container(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.luminosity,
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage("intern.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showSafetifyMeCustomer(context);
            },
            child: Card(
              elevation: 10.0,
              child: Container(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.luminosity,
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage("safetifymeCustomer.PNG"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showSafetifyMePartner(context);
            },
            child: Card(
              elevation: 10.0,
              child: Container(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.luminosity,
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage("safetifyMePartner.PNG"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showMobiHub(context);
            },
            child: Card(
              elevation: 10.0,
              child: Container(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.luminosity,
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage("mobihub.PNG"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Card(
            elevation: 10.0,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "On going projects",
                        style: Style.text2,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      Text(
                        "Quizzido",
                        style: Style.text2,
                      ),
                      Text(
                        "And",
                        style: Style.and,
                      ),
                      Text(
                        "SafelyBack",
                        style: Style.text2,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showHireJobsDialog(BuildContext context) {
    Dialog fancyDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Container(
        height: 250.0,
        width: 300.0,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Key Responsibilites",
                    style: Style.heading,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    "- Maintained project code \n\n"
                    "- Implemented Maps \n\n"
                    "- Integrated code for launching one app to another app\n\n",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => fancyDialog);
  }

  void showHireMilitaryInternDialog(BuildContext context) {
    Dialog fancyDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Container(
        height: 250.0,
        width: 300.0,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Key Responsibilites",
                    style: Style.heading,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    "- Maintained project code \n\n"
                    "- Implemented Maps \n\n"
                    "- Integrated code for launching one app to another app\n\n"
                    "- Integrated One Signal notification",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => fancyDialog);
  }

  void showSafetifyMeCustomer(BuildContext context) {
    Dialog fancyDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Container(
        height: 350.0,
        width: 300.0,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Key Responsibilites",
                    style: Style.heading,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    "- Planning for project and timeline\n\n"
                    "- Implemeted Razorpay\n\n"
                    "- Implemented Maps \n\n"
                    "- Implemented firbase for code crash reports \n\n"
                    "- Responsibility for mainting play store and App store\n\n"
                    "- Integrated Booking timeslot according to scedule\n\n"
                    "- Integrated Push notification",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => fancyDialog);
  }

  void showSafetifyMePartner(BuildContext context) {
    Dialog fancyDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Container(
        height: 430.0,
        width: 300.0,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Key Responsibilites",
                    style: Style.heading,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    "- Planning for project and timeline\n\n"
                    "- Accept and decilne of booking \n\n"
                    "- Show notifications for daily basis tasks\n\n"
                    "- Show bookings for today,tommorow,all etc \n\n"
                    "- Implemented Maps \n\n"
                    "- Implemented firbase for code crash reports \n\n"
                    "- Responsibility for mainting play store and App store\n\n"
                    "- Integrated Booking timeslot according to scedule\n\n"
                    "- Integrated Push notification",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => fancyDialog);
  }

  void showMobiHub(BuildContext context) {
    Dialog fancyDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Container(
        height: 320.0,
        width: 300.0,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Key Responsibilites",
                    style: Style.heading,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    "- Planning for new modules\n\n"
                    "- Implemeted paypal in Android \n\n"
                    "- Do refactoring of the code\n\n"
                    "- changed in signup process \n\n"
                    "- Responisbility for firbase of code crash reports \n\n"
                    "- Responsibility for mainting play store \n\n",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => fancyDialog);
  }
}
