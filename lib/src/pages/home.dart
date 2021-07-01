import 'package:flutter/material.dart';
import 'package:qvapay/src/snippets/latest_transactions.dart';
import 'package:qvapay/theme.dart';
import 'package:qvapay/src/snippets/balance.dart';
import 'package:qvapay/src/snippets/bottom_nav.dart';
import 'package:qvapay/src/snippets/topbar.dart';
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
      body: Column(
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
                
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
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
                          child:
                              FaIcon(FontAwesomeIcons.plusCircle, size: 14.0)),
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
                          child:
                              FaIcon(FontAwesomeIcons.plusCircle, size: 14.0)),
                    ],
                  ),

                  // Latest 3 transactions
                  latestTransactions(context), 
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
