import 'package:flutter/material.dart';

/*
 * Card with this structure:
 * 
 * Container:
 * Row
 *  Column
 *    APP or user associated
 *  Column
 *    Name (Text)
 *    Surname (Text)
 *  Column
 *    AMOUNT (Text)
 *    Status (Text)
 */

Widget balanceCard = Card(
  margin: EdgeInsets.all(10.0),
  elevation: 1.0,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50.0))),
  child: Container(
      decoration: BoxDecoration(
          gradient:
              RadialGradient(colors: [Color(0xFF015FFF), Color(0xFF015FFF)])),
      padding: EdgeInsets.all(5.0),
      // color: Color(0xFF015FFF),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Text("Savings",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(r"$ " "95,940.00",
                  style: TextStyle(color: Colors.white, fontSize: 24.0)),
            ),
          ),
          SizedBox(height: 35.0),
        ],
      )),
);
