import 'package:flutter/material.dart';
import 'package:qvapay/src/models/me_model.dart';
import 'package:qvapay/src/snippets/transaction.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget latestTransactions(BuildContext context, {Future<Me> me}) {
  
  //final latestTransactions = new TransactionsProvider();
  List<dynamic> _transactions = [];

  // WWidget con las ultimas 3 operaciones
  List<Widget> _latestTransactions() {
    
    return _transactions.map((transaction) {
      return transactionItem(
          context: context,
          logo: transaction.logo,
          concept: transaction.description,
          subconcept: transaction.remoteId,
          amount: double.parse(transaction.amount),
          status: transaction.status,
          description: transaction.description,
          uuid: transaction.uuid);
    }).toList();
  }

  return FutureBuilder(
    
    //future: latestTransactions.getLatestTransactionsHome(),
    future: me,
    initialData: [],
    builder: (BuildContext context, AsyncSnapshot snapshot) {

      if (snapshot.hasData) {
        
        _transactions = snapshot.data.latestTransactions;

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
            SizedBox(height: 20),

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
