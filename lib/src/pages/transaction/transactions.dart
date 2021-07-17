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
  // COntrolador del scroll de la lista
  ScrollController _scrollController = new ScrollController();

  // Date from latest transaction
  int _latestTransaction = 0;

  // Retrieved transactions
  List<int> _transactions = [];

  @override
  void initState() {
    super.initState();
    _retrieveMoreTransactions();

    _scrollController.addListener(() {
      print("SCROLL");
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print("FINAL");
        _retrieveMoreTransactions();
      }
    });
  }

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
              // Link Scroll COntroller to this
              controller: _scrollController,
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

  // Get more transactions from user data
  _retrieveMoreTransactions() {
    // retrieve here the transactions from this user
    for (var i = 1; i < 20; i++) {
      _latestTransaction++;
      _transactions.add(_latestTransaction);

      //Update Papi
      setState(() {});
    }
  }
}
