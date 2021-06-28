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
            title: "Google",
            logoUrl:
                "https://qvapay.com/storage/services/80SgtZ7OmxbjRkDGPVv8KNpe5h3rHpndetZrz8Qz.png",
            colors: ["0xFF565656", "0xFF989898"]),
        SizedBox(width: 10),
        serviceCard(context,
            price: 10.0,
            title: "Google",
            logoUrl:
                "https://qvapay.com/storage/services/80SgtZ7OmxbjRkDGPVv8KNpe5h3rHpndetZrz8Qz.png",
            colors: ["0xFF565656", "0xFF989898"]),
        SizedBox(width: 10),
        serviceCard(context,
            price: 10.0,
            title: "Google",
            logoUrl:
                "https://qvapay.com/storage/services/80SgtZ7OmxbjRkDGPVv8KNpe5h3rHpndetZrz8Qz.png",
            colors: ["0xFF565656", "0xFF989898"]),
        SizedBox(width: 10),
      ],
    ),
  );
}
