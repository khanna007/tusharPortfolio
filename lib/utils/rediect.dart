import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Redirect {
  push(context, navigateTo) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => navigateTo,
      ),
    );
  }

  replace(context, replaceTo) {
    Navigator.of(context, rootNavigator: true).pushReplacement(
      MaterialPageRoute(
        builder: (context) => replaceTo,
      ),
    );
  }
  cupertiono(context, navigateTo) {
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (context) => navigateTo,
      ),
    );
  }

//  changeTab(context, index) {
//    CallingPageFragment.of(context).changeIndex(index);
//  }
}
