import 'package:flutter/material.dart';
import 'package:qvapay/src/snippets/transaction.dart';

Widget latestTransactions(BuildContext context) {
  return Column(
    children: [
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
