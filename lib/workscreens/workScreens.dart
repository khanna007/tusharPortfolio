import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/utils/ResponsiveWidget.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NavButton(
                icon: FontAwesomeIcons.github,
                onPressed: () async {
                  if (await canLaunch("https://github.com/khanna007")) {
                    await launch(
                      "https://github.com/khanna007",
                      forceSafariVC: false,
                      forceWebView: false,
                      headers: <String, String>{
                        'my_header_key': 'my_header_value'
                      },
                    );
                  } else {
                    throw 'Could not launch ${"https://github.com/khanna007"}';
                  }
                },
                color: Colors.white,
              ),
              NavButton(
                icon: FontAwesomeIcons.twitter,
                onPressed: () async {
                  if (await canLaunch("https://twitter.com/Tkhanna007")) {
                    await launch(
                      "https://twitter.com/Tkhanna007",
                      forceSafariVC: false,
                      forceWebView: false,
                      headers: <String, String>{
                        'my_header_key': 'my_header_value'
                      },
                    );
                  } else {
                    throw 'Could not launch ${"https://twitter.com/Tkhanna007"}';
                  }
                },
                color: Colors.white,
              ),
              NavButton(
                icon: FontAwesomeIcons.linkedin,
                onPressed: () async {
                  if (await canLaunch(
                      "https://www.linkedin.com/in/khanna007/")) {
                    await launch(
                      "https://www.linkedin.com/in/khanna007/",
                      forceSafariVC: false,
                      forceWebView: false,
                      headers: <String, String>{
                        'my_header_key': 'my_header_value'
                      },
                    );
                  } else {
                    throw 'Could not launch ${"https://www.linkedin.com/in/khanna007/"}';
                  }
                },
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final icon;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.icon,
      @required this.onPressed,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}
