import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qvapay/theme.dart';

Widget sendButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/send');
    },
    child: Row(
      children: [
        Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              FaIcon(FontAwesomeIcons.wallet),
              Positioned(
                bottom: -2,
                left: -3, //give the values according to your requirement
                child: FaIcon(FontAwesomeIcons.chevronCircleUp,
                    semanticLabel: 'Send Money',
                    color: ThemeColors.sentMoney,
                    size: 12.0),
              ),
            ],
          ),
        ),
        SizedBox(width: 12),
        Text(
          'Enviar',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        )
      ],
    ),
  );
}
