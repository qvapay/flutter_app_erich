import 'package:flutter/material.dart';
import 'package:qvapay/theme.dart';
//import 'package:qvapay/src/alert.dart';
import 'package:qvapay/src/snippets/bottom_nav.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:qr/qr.dart';

class ReceivePage extends StatefulWidget {
  @override
  _ReceivePageState createState() => _ReceivePageState();
}

class _ReceivePageState extends State<ReceivePage> {
  //String _username = "";
  String _qrData = "PepeConejasacdvito";
  double _amount = 0.00;

  @override
  Widget build(BuildContext context) {
    String avatar =
        "https://qvapay.com/storage/profiles/xGnoyrlZMy10Ta5hCQGvEtj6aqJK3Fa1rueU1lPv.jpg";

    return Scaffold(
        // Whole APP Background Color
        backgroundColor: ThemeColors.dark1,

        // Bottom Buttons
        bottomNavigationBar: bottomNav(context),

        // Body Stack
        body: Column(children: [
          // Body
          Expanded(
            child: Container(
              // General Padding
              padding: EdgeInsets.symmetric(horizontal: 0),

              // list View para Scroll Behavior
              child: ListView(
                padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                children: [
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 180.0,
                        height: 180.0,
                        decoration: BoxDecoration(
                          color: ThemeColors.prettyWhite,
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        padding: EdgeInsets.all(0),
                        child: CircleAvatar(
                          backgroundColor: ThemeColors.dark2,
                          //backgroundImage: NetworkImage(avatar),
                          backgroundImage: CachedNetworkImageProvider(avatar),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Erich Garcia Cruz ✅"),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  TextField(
                    keyboardType: TextInputType.numberWithOptions(
                        signed: false, decimal: true),
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: ThemeColors.dark2,
                      contentPadding: EdgeInsets.all(15.0),
                      //counter: Text("Letras"),
                      hintText: "0.00",
                      labelText: "Cantidad a recibir:",
                      labelStyle: TextStyle(fontSize: 16.0),
                      //helperText: "Name",
                      //suffixIcon: Icon(Icons.attach_money),
                      //icon: Icon(Icons.attach_money),
                    ),
                    onChanged: (value) {
                      setState(() {
                        print(value);
                        _amount = double.parse(value);
                        print(_amount);
                        _qrData = _amount.toString();
                      });
                    },
                  ),
                  /*
                  ElevatedButton(
                    onPressed: () => mostrarAlert(context, "papi", "DIme Algo"),
                    child: const Text('Alert'),
                  ),
                  */
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrettyQr(
                        image: AssetImage('images/qvapay.png'),
                        typeNumber: 3,
                        size: 250,
                        data: _qrData,
                        elementColor: ThemeColors.primaryColor,
                        errorCorrectLevel: QrErrorCorrectLevel.M,
                        roundEdges: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          )
        ]));
  }
}
