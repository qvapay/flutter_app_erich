import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qvapay/routes.dart';
import 'package:qvapay/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QvaPay',
      routes: routes,
      //theme: themedata,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
