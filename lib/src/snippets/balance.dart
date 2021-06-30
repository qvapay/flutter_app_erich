import 'package:flutter/material.dart';
import 'package:qvapay/theme.dart';

Widget balanceCard(BuildContext context) {
  return Container(
    height: 140,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                    ThemeColors.moonPurple1,
                    ThemeColors.moonPurple2
                  ])),
            )),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '\$ 413.15',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.00),
              ),
              Container(
                padding: EdgeInsets.only(left: 25.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "\$ 170.90",
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
                              color: ThemeColors.sentMoney,
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
                              color: ThemeColors.receivedMoney,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "\$ 450.10",
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
        ),
      ],
    ),
  );
}
