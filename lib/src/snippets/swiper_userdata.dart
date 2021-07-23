import 'package:flutter/material.dart';
import 'package:qvapay/src/models/me_model.dart';
import 'package:qvapay/src/snippets/balance.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperUserData extends StatelessWidget {
  
  final Future<Me> me;

  const SwiperUserData({Key key, @required this.me}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Container(
      width: _screenSize.width,
      height: 140,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return balanceCard(context, me);
        },
        layout: SwiperLayout.STACK,
        itemCount: 1,
        itemWidth: _screenSize.width * 0.825,
      ),
    );
  }
}
