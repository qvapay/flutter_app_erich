import 'package:flutter/material.dart';
import 'package:qvapay/routes.dart';
import 'package:qvapay/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QvaPay',
      theme: themedata,
      routes: routes,
      initialRoute: '/',     // Esto apunta al Page que verifica si ya se inició por primera vez y redirige
    );
  }
}
