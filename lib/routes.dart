import 'package:flutter/material.dart';
import 'package:qvapay/src/pages/home.dart';
import 'package:qvapay/src/pages/profile/settings.dart';
import 'package:qvapay/src/pages/transaction/receive.dart';
import 'package:qvapay/src/pages/transaction/send.dart';
import 'package:qvapay/src/pages/services/services.dart';
import 'package:qvapay/src/pages/transaction/transactions.dart';

// Eventulmente se mandarán argumentos

Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => HomePage(),
  '/send': (BuildContext context) => SendPage(),
  '/receive': (BuildContext context) => ReceivePage(),
  '/services': (BuildContext context) => ServicesPage(),
  '/transactions': (BuildContext context) => TransactionsPage(),
  '/settings': (BuildContext context) => SettingsPage(),
};
