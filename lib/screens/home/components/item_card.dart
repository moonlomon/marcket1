import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Products.dart';

class ItemCard extends StatelessWidget {
  final Product product;

  // final Function press;
  const ItemCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Image.asset(product.image)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child:
          Text(product.title, style: TextStyle(color: kTextLightColor)),
        ),
        Text("\$${product.price}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}