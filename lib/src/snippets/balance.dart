import 'package:flutter/material.dart';

Widget balanceCard(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
    width: MediaQuery.of(context).size.width * 0.75,
    height: 140,
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
  );
}
