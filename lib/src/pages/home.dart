import 'package:flutter/material.dart';
import 'package:qvapay/src/pages/transaction/transfer.dart';
import 'package:qvapay/src/snippets/balance.dart';
import 'package:qvapay/src/snippets/receive_button.dart';
import 'package:qvapay/src/snippets/send_button.dart';
import 'package:qvapay/src/snippets/transaction.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Whole APP Background Color
      backgroundColor: Color(0xFF17191E),

      // Bottom Buttons
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [sendButton(), receiveButton()],
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
              Container(
                height: 200,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20.0, top: 42),
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
              ),

              // Horizontal Menu
              Expanded(
                child: Container(
                  // General Padding
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  // Background Color
                  color: Color(0xFF17191E),
                  // list View para Scroll Behavior
                  child: ListView(
                    padding: EdgeInsets.only(top: 60, left: 15, right: 15),
                    children: [
                      Text(
                        "Servicios",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
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
                      Text(
                        "Transacciones",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
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

          // Balance Card
          Positioned(
            top: 100,
            child: balanceCard(context)
          )
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
