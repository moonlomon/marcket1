// 외부패키지
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marcket1/constants.dart';
// 내부임포트
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: (){},
      ),
      elevation: 0,
      actions: <Widget>[
        IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(
              "assets/icons/search.svg",
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(
              "assets/icons/cart.svg",
            color: kTextColor,
          ),
        ),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
