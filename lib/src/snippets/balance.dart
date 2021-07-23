import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:qvapay/src/models/me_model.dart';
import 'package:qvapay/theme.dart';

Widget balanceCard(BuildContext context, Future<Me> me) {
  return FutureBuilder<Me>(
    future: me,
    //initialData: InitialData,
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (snapshot.hasData) {

        final String _balance = snapshot.data.balance;
        final String _totalOut = snapshot.data.totalOut.toString();
        final String _totalIn = snapshot.data.totalIn.toString();

        return Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
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
                      _balance,
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
                                    _totalOut,
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
                                    _totalIn,
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
      } else {
        return Container();
      }
    },
  );
}
