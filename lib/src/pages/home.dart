import 'package:flutter/material.dart';
import 'package:qvapay/src/models/me_model.dart';
import 'package:qvapay/src/providers/me_provider.dart';
import 'package:qvapay/src/snippets/stream_transactions.dart';
import 'package:qvapay/theme.dart';
import 'package:qvapay/src/snippets/footer.dart';
import 'package:qvapay/src/snippets/latest_transactions.dart';
import 'package:qvapay/src/snippets/swiper_userdata.dart';
import 'package:qvapay/src/snippets/bottom_nav.dart';
import 'package:qvapay/src/snippets/topbar.dart';
import 'package:qvapay/src/pages/services/horizontal_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  // user Data
  Future<Me> me = new MeProvider().me();

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
          topbar(context, me: me),

          // Body
          Expanded(
            child: Container(
              // General Padding
              padding: EdgeInsets.symmetric(horizontal: 0),

              // list View para Scroll Behavior
              child: ListView(
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                children: [
                  // User Balance and other data wiper
                  //swiperUserData(context),
                  SwiperUserData(me: me),

                  // Spacer
                  SizedBox(height: 30),

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
                  SizedBox(height: 5),

                  // Services List
                  servicesList(context),

                  // Spacer
                  SizedBox(height: 15),

                  // Latest 3 transactions
                  latestTransactions(context, me: me),

                  // Spacer
                  SizedBox(height: 15),

                  // Latest 3 transactions as Stream
                  streamTransactions(context, me: me),

                  // Spacer
                  SizedBox(height: 15),

                  footer(context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
