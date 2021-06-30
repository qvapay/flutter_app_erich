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
          context,
          Icons.fastfood,
          "Recarga del Exterior",
          "56897952366",
          -20.8,
          "Completed",
          "Algo acá",
          "pwiuvbwpieuvbwevpubwev"),

      SizedBox(
        height: 7.5,
      ),

      transactionItem(
          context,
          Icons.fastfood,
          "Web Giveers",
          "Diseño e implementación",
          120.15,
          "Completed",
          "Algo acá",
          "wqevoyqbevpwieuvbwweip"),

      SizedBox(
        height: 7.5,
      ),

      transactionItem(context, Icons.fastfood, "RM Envíos", "Combo de comida",
          -120.15, "Completed", "Algo acá", "wqevoyqbevpwieuvbwweip"),

      SizedBox(
        height: 7.5,
      ),
    ],
  );
}
