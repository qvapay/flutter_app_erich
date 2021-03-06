import 'package:flutter/material.dart';
import 'package:qvapay/src/snippets/receive_button.dart';
import 'package:qvapay/src/snippets/send_button.dart';
import 'package:qvapay/theme.dart';

// Bottom Navigation
Widget bottomNav(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      color: ThemeColors.dark2,
    ),
    padding: const EdgeInsets.all(16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [sendButton(context), receiveButton(context)],
    ),
  );
}
