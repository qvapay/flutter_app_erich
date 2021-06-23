import 'package:flutter/material.dart';
import 'package:qvapay/src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QvaPay',
      home: HomePage(),
      theme: ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
    );
  }
}
