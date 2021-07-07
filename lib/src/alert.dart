import 'package:flutter/material.dart';
import 'package:qvapay/theme.dart';

void mostrarAlert(BuildContext context, String title, String content) {
  showDialog(
    context: context,
    barrierColor: ThemeColors.dark2,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        title: Text(title),
        content: Column(
          // Adapt to inner content
          mainAxisSize: MainAxisSize.min,
          children: [
            FlutterLogo(size: 200.0),
            Text(content),
          ],
        ),
        actions: [
          TextButton(onPressed: null, child: Text("Ok")),
          TextButton(
              onPressed: () => Navigator.pop(context), child: Text("Cancel")),
        ],
      );
    },
  );
}
