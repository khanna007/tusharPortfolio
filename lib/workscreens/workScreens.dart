import 'package:flutter/material.dart';
import 'package:myportfolio/utils/ResponsiveWidget.dart';
import 'package:myportfolio/utils/rediect.dart';
import 'package:myportfolio/utils/style.dart';

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
                text: "Work",
                onPressed: () {

                },
                color: Colors.white,
              ),
              NavButton(
                text: "Twitter",
                onPressed: () {},
                color: Colors.white,
              ),
              NavButton(
                text: "Facebook",
                onPressed: () {},
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
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(
        text,
        style: Style.myName,
      ),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}
