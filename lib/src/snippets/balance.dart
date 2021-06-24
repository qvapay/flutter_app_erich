import 'package:flutter/material.dart';
import 'package:qvapay/theme.dart';

Widget balanceCard(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
    width: MediaQuery.of(context).size.width * 0.75,
    height: 140,
    decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.screen,
        gradient: RadialGradient(
          center: Alignment(0.9, 0.1),
          radius: 10.0,
          colors: [
            ThemeColors.primaryColor,
            ThemeColors.accentColor,
          ],
          stops: [
            0,
            1,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(.15),
            blurRadius: 8,
            spreadRadius: 3,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '\$ 2315.15',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50.00),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "\$2 170.90",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.arrow_upward,
                        color: Color(0XFF00838F),
                      )
                    ],
                  ),
                ],
              ),

              //Container(width: 1, height: 50, color: Colors.grey),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        color: Color(0XFF00838F),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "\$1 450.10",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
