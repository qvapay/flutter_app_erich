import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qvapay/src/snippets/transaction.dart';

Widget latestTransactions(BuildContext context) {
  return Column(
    children: [
      
      // Transaction Header
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Transacciones",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
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

      // List of transactions
      transactionItem(
          context: context,
          icon: Icons.fastfood,
          concept: "Recarga del Exterior",
          subconcept: "56897952366",
          amount: -20.8,
          status: "Completed",
          description: "Algo acá",
          uuid: "pwiuvbwpieuvbwevpubwev"),

      SizedBox(
        height: 7.5,
      ),

      transactionItem(
          context: context,
          icon: Icons.fastfood,
          concept: "Web Giveers",
          subconcept: "Diseño e implementación",
          amount: 120.15,
          status: "Completed",
          description: "Algo acá",
          uuid: "wqevoyqbevpwieuvbwweip"),

      SizedBox(
        height: 7.5,
      ),

      transactionItem(
          context: context,
          icon: Icons.fastfood,
          concept: "RM Envíos",
          subconcept: "Combo de comida",
          amount: -120.15,
          status: "Completed",
          description: "Algo acá",
          uuid: "wqevoyqbevpwieuvbwweip"),

      SizedBox(
        height: 7.5,
      ),
    ],
  );
}
