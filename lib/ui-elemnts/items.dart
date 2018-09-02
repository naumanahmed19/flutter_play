import 'package:flutter/material.dart';
import '../ui-elemnts/product.dart';
import '../models/product.dart';

class ProductsWidget extends StatelessWidget {
  ProductsWidget(this.products);
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemExtent: 110.0,
        itemBuilder: (BuildContext context, int index) {
          return ProductWidget(products[index]);
        },
      ),
    );
  }
}
