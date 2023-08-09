import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutLineButton(Icons.remove, (){
          setState(() {
            if (numOfItem > 1) {
              numOfItem--;
            }
          });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(numOfItem.toString().padLeft(2, "0"), style: Theme.of(context).textTheme.headlineSmall,),
        ),
        buildOutLineButton(Icons.add, (){
          setState(() {
            numOfItem++;
          });
        })
      ],
    );
  }

  SizedBox buildOutLineButton(IconData icon, VoidCallback press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        //아웃라인버튼 스타일 적용 최신버전
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.zero,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
        onPressed: press, // 함수 적용 안됨 : Fuction press -> VoidCallback press
        child: Icon(icon),
      ),
    );
  }
}