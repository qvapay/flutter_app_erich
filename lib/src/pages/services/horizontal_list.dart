import 'package:flutter/material.dart';
import 'package:qvapay/src/snippets/service_card.dart';

Widget servicesList(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10.0),
    height: 120.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        serviceCard(context,
            price: 10.0,
            title: "Google Play",
            logoUrl:
                "https://qvapay.com/app_logos/googleplay.png",
            colors: ["0xFF565656", "0xFF989898"]),
        SizedBox(width: 10),
        serviceCard(context,
            price: 10.0,
            title: "App Store",
            logoUrl:
                "https://qvapay.com/app_logos/apple.png",
            colors: ["0xFF565656", "0xFF989898"]),
        SizedBox(width: 10),
        serviceCard(context,
            price: 50.0,
            title: "QvaPay",
            logoUrl:
                "https://qvapay.com/app_logos/qvapay.png",
            colors: ["0xFF565656", "0xFF989898"]),
        SizedBox(width: 10),
      ],
    ),
  );
}
