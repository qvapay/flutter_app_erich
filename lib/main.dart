import 'package:flutter/material.dart';
import 'package:qvapay/src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QvaPay',
      home: Home(),
    );
  }
}
