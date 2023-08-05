import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Products.dart';

class ProductTitmeWithImage extends StatelessWidget {
  const ProductTitmeWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin,),
          Row(
            children: <Widget>[
              RichText(
                // RichText??
                text: TextSpan(children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ]),
              ),
              SizedBox(width: kDefaultPaddin,),
              Expanded(
                child: Image.asset(product.image, fit: BoxFit.fill,),
              )
            ]djsm
          )
        ],
      ),
    );
  }
}