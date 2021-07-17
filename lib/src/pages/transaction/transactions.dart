import 'package:flutter/material.dart';
import 'package:qvapay/src/snippets/bottom_nav.dart';
import 'package:qvapay/src/snippets/topbar.dart';
import 'package:qvapay/src/snippets/transaction.dart';
import 'package:qvapay/theme.dart';

class TransactionsPage extends StatefulWidget {
  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  List<int> _transactions = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Whole APP Background Color
      backgroundColor: ThemeColors.dark1,

      // Bottom Buttons
      bottomNavigationBar: bottomNav(context),

      body: Column(
        children: [
          // Top Bar
          topbar(context,
              name: "Erich",
              avatar:
                  "https://qvapay.com/storage/profiles/xGnoyrlZMy10Ta5hCQGvEtj6aqJK3Fa1rueU1lPv.jpg"),

          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              children: [
                // Transaction Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transacciones Completadas:",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
                _latestTransactions(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _latestTransactions() {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: _transactions.length,
      itemBuilder: (BuildContext context, int index) {
        return transactionItem(
            context: context,
            icon: Icons.fastfood,
            concept: "RM Envíos",
            subconcept: "Combo de comida",
            amount: -120.15,
            status: "Completed",
            description: "Algo acá",
            uuid: "wqevoyqbevpwieuvbwweip");
      },
    );
  }
}
