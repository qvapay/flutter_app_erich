import 'package:flutter/material.dart';
import 'package:qvapay/src/pages/transaction/transfer.dart';
import 'package:qvapay/src/snippets/balance.dart';
import 'package:qvapay/src/snippets/receive_button.dart';
import 'package:qvapay/src/snippets/send_button.dart';
import 'package:qvapay/src/snippets/topbar.dart';
import 'package:qvapay/src/snippets/transaction.dart';
import 'package:qvapay/theme.dart';

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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          color: ThemeColors.dark3,
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [sendButton(context), receiveButton(context)],
        ),
      ),

      // Body Stack
      body: Stack(
        // Center Stack
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              // Top Bar
              topbar,

              // Horizontal Menu
              Expanded(
                child: Container(
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
                      SizedBox(
                        height: 30,
                      ),
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
                          Text(
                            "Ver más >",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildActivityButton(Icons.card_membership, "My Card",
                              Colors.blue.withOpacity(0.2), Color(0XFF01579B)),
                          buildActivityButton(
                              Icons.transfer_within_a_station,
                              "Transfer",
                              Colors.cyanAccent.withOpacity(0.2),
                              Color(0XFF0097A7)),
                          buildActivityButton(
                              Icons.pie_chart,
                              "Statistics",
                              Color(0XFFD7CCC8).withOpacity(0.4),
                              Color(0XFF9499B7)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
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
                          Text(
                            "Ver más >",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      transactionItem(
                          context,
                          Icons.fastfood,
                          "Food",
                          "Papa Johns",
                          120.15,
                          "Completed",
                          "Algo acá",
                          "pwiuvbwpieuvbwevpubwev"),
                      SizedBox(
                        height: 7.5,
                      ),
                      transactionItem(
                          context,
                          Icons.fastfood,
                          "Food",
                          "Papa Johns",
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
                          "Food",
                          "Papa Johns",
                          -120.15,
                          "Completed",
                          "Algo acá",
                          "wqevoyqbevpwieuvbwweip"),
                      SizedBox(
                        height: 7.5,
                      ),
                      transactionItem(
                          context,
                          Icons.fastfood,
                          "Food",
                          "Papa Johns",
                          -87,
                          "Completed",
                          "Algo acá",
                          "wqevoyqbevpwieuvbwweip"),
                      SizedBox(
                        height: 7.5,
                      ),
                      transactionItem(
                          context,
                          Icons.fastfood,
                          "Food",
                          "Papa Johns",
                          120.15,
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

  // Cards with transactons list
  Container buildCategoryCard(
      IconData icon, String title, int amount, int percentage) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 85,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: Color(0xFF00B686),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$$amount",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "($percentage%)",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade300),
              ),
              Container(
                height: 5,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0XFF00B686)),
              ),
            ],
          )
        ],
      ),
    );
  }

  // Services Buttons
  GestureDetector buildActivityButton(
      IconData icon, String title, Color backgroundColor, Color iconColor) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => TransferPage())),
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
