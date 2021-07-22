import 'package:flutter/material.dart';

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
          ],
        ),
        
      ],
    ),
  );
}
