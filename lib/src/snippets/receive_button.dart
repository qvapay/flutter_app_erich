import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget receiveButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/receive');
    },
    child: Row(
      children: [
        Container(
          child: Stack(
            children: <Widget>[
              FaIcon(FontAwesomeIcons.wallet),
              Positioned(
                bottom: 0,
                left: 0, //give the values according to your requirement
                child: FaIcon(FontAwesomeIcons.chevronCircleDown,
                    color: Colors.blue, size: 12.0),
              ),
            ],
          ),
        ),
        SizedBox(width: 12),
        Text(
          'Recibir',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        )
      ],
    ),
  );
}
