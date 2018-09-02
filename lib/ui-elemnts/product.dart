import 'package:flutter/material.dart';
import '../models/product.dart';
import '../ui-elemnts/product-thumbnail.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  ProductWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/product/' + product.id),
          child: ProductThumbnail(product.thumbnailUrl, product.id),
        ),
        SizedBox(height: 10.0),
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Row(
                children: <Widget>[
                  Flexible(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        product.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        product.size,
                        style: TextStyle(fontSize: 12.0),
                      )
                    ],
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  size: 16.0,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
