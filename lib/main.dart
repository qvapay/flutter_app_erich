import 'package:flutter/material.dart';
import 'package:qvapay/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QvaPay',
      //home: HomePage(),
      routes: routes,
      theme: ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
    );
  }
}
