import 'package:flutter/material.dart';

Widget sendButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/send');
    },
    child: Row(
      children: [
        Icon(Icons.ac_unit, color: Colors.white),
        SizedBox(width: 10),
        Text(
          'Enviar',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        )
      ],
    ),
  );
}
