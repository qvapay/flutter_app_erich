import 'package:flutter/material.dart';

Widget receiveButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/receive');
    },
    child: Row(
      children: [
        Icon(Icons.ac_unit, color: Colors.white),
        SizedBox(width: 10),
        Text(
          'Recibir',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        )
      ],
    ),
  );
}
