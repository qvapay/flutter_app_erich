import 'package:flutter/material.dart';
import 'package:qvapay/src/snippets/balance.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperUserData extends StatelessWidget {
  
  final List<dynamic> userData;

  const SwiperUserData({Key key, @required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      width: _screenSize.width,
      height: 140,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return balanceCard(context);
        },
        layout: SwiperLayout.STACK,
        itemCount: userData.length,
        itemWidth: _screenSize.width * 0.825,
      ),
    );
  }
}
