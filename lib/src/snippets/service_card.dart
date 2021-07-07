import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:qvapay/theme.dart';
import 'package:simple_shadow/simple_shadow.dart';

Widget serviceCard(BuildContext context,
    {String logoUrl = ThemeColors.logoUrl,
    double price = 0.00,
    String title = "",
    List<String> colors}) {
  return Container(
    decoration: BoxDecoration(
      //color: ThemeColors.accentColor,
      borderRadius: BorderRadius.circular(10.0),
    ),
    width: 200.0,
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          // https://blurha.sh/
          child: BlurHash(
            hash: "LJ0DeHfqgLenglfTf~eng2g2g3f6",
            imageFit: BoxFit.cover,
            curve: Curves.bounceInOut,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Buyers of this
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // heart here for fav selection
                ],
              ),
            ),

            // logo Row
            Container(
              child: SimpleShadow(
                child: Image(
                  width: 70.0,
                  height: 70.0,
                  image: NetworkImage(logoUrl),
                  semanticLabel: title,
                ),
                opacity: 0.25, // Default: 0.5
                color: Colors.black, // Default: Black
                offset: Offset(3, 3), // Default: Offset(2, 2)
                sigma: 7, // Default: 2
              ),
            ),

            // Name and Price Data Row
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.00, vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(title)],
                  ),
                  Text('\$ ' + price.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
