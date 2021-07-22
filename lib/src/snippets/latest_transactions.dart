import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qvapay/src/models/transactions_model.dart';
import 'package:qvapay/src/providers/transactions_provider.dart';
import 'package:qvapay/src/snippets/transaction.dart';

Widget latestTransactions(BuildContext context) {
  final latestTransactions = new TransactionsProvider();
  List<Transaction> _transactions = [];

  // Muestra las ultimas 3 operaciones
  List<Widget> _latestTransactions() {
    return _transactions.map((transaction) {
      return transactionItem(
          context: context,
          icon: Icons.fastfood, //TODO: Change this for the logo
          concept: transaction.description,
          subconcept: transaction.remoteId,
          amount: double.parse(transaction.amount),
          status: transaction.status,
          description: transaction.description,
          uuid: transaction.uuid);
    }).toList();
  }

  return FutureBuilder(
    future: latestTransactions.getLatestTransactionsHome(),
    initialData: [],
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (snapshot.hasData) {
        _transactions = snapshot.data;

        return Column(
          children: [
            // Transaction Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transacciones",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/transactions');
                    },
                    child: FaIcon(FontAwesomeIcons.plusCircle, size: 14.0)),
              ],
            ),

            // Spacer
            SizedBox(
              height: 20,
            ),

            Column(
              children: _latestTransactions(),
            ),

          ],
        );
      } else {
        return Container();
      }
    },
  );
}
