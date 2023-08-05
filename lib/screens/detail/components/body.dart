import 'package:flutter/material.dart';
import 'package:marcket1/constants.dart';
import 'package:marcket1/models/Products.dart';
import 'package:marcket1/screens/detail/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: kDefaultPaddin),
                  // height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Color"),
                              Row(
                                children: <Widget>[
                                  ColorDot(color: Color(0xFF356C95), isSelected: true,),
                                  ColorDot(color: Color(0xFFF8C078)),
                                  ColorDot(color: Color(0xFFA29B9B)),
                                ],
                              )
                            ],
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: kTextColor),
                              children: [
                                TextSpan(text: "Size\n"),
                                TextSpan(text: "${product.size} cm",
                                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold)
                                )
                              ]
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ProductTitmeWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot(
      {super.key, required this.color, this.isSelected = false // 디폴트 값 주기,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
