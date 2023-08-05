import 'package:flutter/material.dart';
import 'package:marcket1/constants.dart';
import 'package:marcket1/models/Products.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          // 대칭여백 지정 = symmetric
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75, //??
                mainAxisSpacing: kDefaultPaddin, //??
                crossAxisSpacing: kDefaultPaddin, //??
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}




