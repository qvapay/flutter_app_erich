import 'package:flutter/material.dart';
import 'package:qvapay/theme.dart';
import 'package:qvapay/src/snippets/balance.dart';
import 'package:qvapay/src/snippets/bottom_nav.dart';
import 'package:qvapay/src/snippets/topbar.dart';
import 'package:qvapay/src/snippets/transaction.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Whole APP Background Color
      backgroundColor: ThemeColors.dark1,

      // Bottom Buttons
      bottomNavigationBar: bottomNav(context),

      // Body Stack
      body: Stack(
        // Center Stack
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              // Top Bar
              topbar(context),

              // Body
              Expanded(
                child: Container(
                  /*
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [ThemeColors.accentColor, ThemeColors.dark1],
                      center: Alignment(-1.6, -0.6),
                      focal: Alignment(-0.9, -0.9),
                      focalRadius: 9.0,
                    ),
                  ),
                  */

                  // General Padding
                  padding: EdgeInsets.symmetric(horizontal: 0),

                  // list View para Scroll Behavior
                  child: ListView(
                    padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                    children: [
                      // Balance Card
                      Container(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: balanceCard(context)),

                      // Spacer
                      SizedBox(
                        height: 30,
                      ),

                      // Services Header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Servicios",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/services');
                              },
                              child: FaIcon(FontAwesomeIcons.plusCircle,
                                  size: 14.0)),
                        ],
                      ),

                      // Spacer
                      SizedBox(
                        height: 5,
                      ),

                      // Services List
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        height: 100.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              width: 160.0,
                              color: Colors.red,
                            ),
                            Container(
                              width: 10.0,
                            ),
                            Container(
                              width: 160.0,
                              color: Colors.blue,
                            ),
                            Container(
                              width: 10.0,
                            ),
                            Container(
                              width: 160.0,
                              color: Colors.green,
                            ),
                            Container(
                              width: 10.0,
                            ),
                            Container(
                              width: 160.0,
                              color: Colors.yellow,
                            ),
                            Container(
                              width: 10.0,
                            ),
                            Container(
                              width: 160.0,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ),

                      // Spacer
                      SizedBox(
                        height: 15,
                      ),

                      // Transaction Header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transacciones",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/transactions');
                              },
                              child: FaIcon(FontAwesomeIcons.plusCircle,
                                  size: 14.0)),
                        ],
                      ),

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
                      transactionItem(
                          context,
                          Icons.fastfood,
                          "RM Envíos",
                          "Combo de comida",
                          -120.15,
                          "Completed",
                          "Algo acá",
                          "wqevoyqbevpwieuvbwweip"),
                      SizedBox(
                        height: 7.5,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  // Services Buttons
  GestureDetector buildActivityButton(
      IconData icon, String title, Color backgroundColor, Color iconColor) {
    return GestureDetector(
      //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => TransferPage())),
      onTap: () => Navigator.pushNamed(context, '/services'),
      child: Container(
        margin: EdgeInsets.all(10),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
