import 'package:flutter/material.dart';

Widget topbar = Container(
  height: 200,
  child: Padding(
    padding: const EdgeInsets.only(left: 20, right: 20.0, top: 42),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                      text: "Hola, ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white38,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                            text: "\$_Name!",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ))
                      ]),
                ),
                SizedBox(width: 10),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0XFF00B686),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 8,
                          spreadRadius: 3)
                    ],
                    border: Border.all(
                      width: 1.5,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
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
