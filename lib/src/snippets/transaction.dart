import 'package:flutter/material.dart';
import 'package:qvapay/src/pages/transaction/show.dart';
import 'package:qvapay/theme.dart';
/*
 * Transaction row
 */

// Image of person
Widget transactionItem(
    BuildContext context,
    IconData icon,
    String concept,
    String subconcept,
    double amount,
    String status,
    String description,
    String uuid) {

  return GestureDetector(
    onTap: () {
      print('clic TX $uuid');
      final route =
          MaterialPageRoute(builder: (context) => TransactionDetails());
      Navigator.push(context, route);
    },
    child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          //color: Colors.white,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          // Service / Person / payment Photo
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(.2),
                        blurRadius: 8,
                        spreadRadius: 3)
                  ],
                  border: Border.all(
                    width: 1.0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                padding: EdgeInsets.all(.6),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.network(
                    "https://qvapay.com/storage/profiles/xGnoyrlZMy10Ta5hCQGvEtj6aqJK3Fa1rueU1lPv.jpg",
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(width: 10),

          // Payment Data
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  concept,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  subconcept,
                  style: TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
              ],
            ),
          ),

          // PayMent Amount
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "+ " + "$amount" + " \$",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ThemeColors.receivedMoney),
              ),
              Text(
                "15/5/21",
                style: TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey),
              ),
            ],
          )
        ])),
  );
}
