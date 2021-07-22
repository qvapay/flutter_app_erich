import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget footer(BuildContext context) {
  return Container(
    width: double.infinity,
    child: Column(
      children: [
        // Transaction Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Promociones",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/transactions');
                },
                child: FaIcon(FontAwesomeIcons.plusCircle, size: 14.0)),
          ],
        ),
      ],
    ),
  );
}
