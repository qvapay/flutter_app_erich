import 'package:flutter/material.dart';

/*
 * #5e72e4
 * #94a0ff
 * #1b47b1
 * #000000
 * #17191E
 * #EAEFFB
 */

//["217245","f3f3f3","7a9f88","004b1c","fb6340","4769b2","5e72e4","f3f3f3"]

ThemeData themedata = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.dark,

  // Colors
  primaryColor: Color(0xFF5e72e4),
  accentColor: Color(0xFF4769b2),

  // Define the default font family.
  fontFamily: 'Georgia',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline3: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline4: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline5: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);

class ThemeColors {
  static Color receivedMoney = Color(0xFF217245);
  static Color receiveMoneyProcessing = Color(0xFF7A9F88);
  static Color receiveMoneyAccent = Color(0xFF004B1C);
  static Color sentMoney = Color(0xFFFA3A0F);
  static Color sentMoneyProcessing = Color(0xFFF96E46);
  static Color prettyWhite = Color(0xFFf3f3f3);
  static Color primaryColor = Color(0xFF5E72E4);
  static Color accentColor = Color(0xFF4769B2);
}
