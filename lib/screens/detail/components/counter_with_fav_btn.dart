import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(right: kDefaultPaddin) ,
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              color: Color(0xFFFF6464),
              shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/icons/heart.svg", color: Colors.white,),
        )
      ],
    );
  }
}