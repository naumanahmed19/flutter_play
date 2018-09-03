import 'package:flutter/material.dart';
import '../ui-elemnts/card-product.dart';
import '../models/product.dart';

class CardSection extends StatelessWidget {
  CardSection(this.products);
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemExtent: 100.0,
        itemBuilder: (BuildContext context, int index) {
          return CardProduct(products[index]);
        },
      ),
    );
  }
}
