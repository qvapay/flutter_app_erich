import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget topbar = Container(
  height: 100,
  child: Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 20.0, top: 42),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Menú Icon
            IconButton(
                icon: FaIcon(FontAwesomeIcons.bars),
                onPressed: () {
                  print("Pressed");
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                      text: "Hola, ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white38,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                            text: "\$_Name!",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ))
                      ]),
                ),
                SizedBox(width: 10),
                Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: Color(0XFF00B686),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.2),
                          blurRadius: 8,
                          spreadRadius: 3)
                    ],
                    border: Border.all(
                      width: 1.6,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  padding: EdgeInsets.all(0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://qvapay.com/storage/profiles/xGnoyrlZMy10Ta5hCQGvEtj6aqJK3Fa1rueU1lPv.jpg"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ),
);
