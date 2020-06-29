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
          Card(
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
          Card(
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
          Card(
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
          Card(
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
          Card(
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
}
