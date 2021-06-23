import 'package:flutter/material.dart';

Widget receiveButton() {
  return Row(
    children: [
      Icon(Icons.ac_unit, color: Colors.white),
      SizedBox(width: 10),
      Text(
        'Recibir',
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
      )
    ],
  );
}
