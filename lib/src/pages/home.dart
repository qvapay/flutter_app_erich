import 'package:flutter/material.dart';
import 'package:qvapay/theme.dart';
import 'package:qvapay/src/snippets/balance.dart';
import 'package:qvapay/src/snippets/bottom_nav.dart';
import 'package:qvapay/src/snippets/topbar.dart';
import 'package:qvapay/src/snippets/transaction.dart';
import 'package:qvapay/src/pages/services/horizontal_list.dart';
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
                  
                  // General Padding
                  padding: EdgeInsets.symmetric(horizontal: 0),

                  // list View para Scroll Behavior
                  child: ListView(
                    padding: EdgeInsets.only(top: 30, left: 25, right: 25),
                    children: [
                      
                      // Balance Card
                      balanceCard(context),

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
                      servicesList(context),

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
