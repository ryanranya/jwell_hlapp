import 'package:flutter/material.dart';

class RYAppTheme {
//  1、共有属性
  static const double smallFontSize = 16;
  static const double normalFontSize = 22;
  static const double largeFontSize = 24;

//  2、普通模式
  static final Color norTextColors = Colors.red;
  static final ThemeData norTheme = ThemeData(
      primarySwatch: Colors.blue,
      canvasColor: Colors.white,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: normalFontSize, color: norTextColors),
        headline4: TextStyle(fontSize: smallFontSize),
        headline3: TextStyle(fontSize: normalFontSize),
        headline2: TextStyle(fontSize: largeFontSize),
      ));

//  3、暗模式
  static final Color darkTextColors = Colors.green;
  static final ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      canvasColor: Colors.black,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: normalFontSize, color: darkTextColors),
        headline4: TextStyle(fontSize: smallFontSize),
        headline3: TextStyle(fontSize: normalFontSize),
        headline2: TextStyle(fontSize: largeFontSize),
      ));
}
