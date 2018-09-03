import 'package:flutter/material.dart';
import '../models/product.dart';
import '../ui-elemnts/product-thumbnail.dart';

class CardProduct extends StatelessWidget {
  final Product product;

  CardProduct(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/product/' + product.id),
            child: ProductThumbnail(product.thumbnailUrl, product.id),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                flex: 3,
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
                          SizedBox(height: 3.0),
                          Text(
                            product.size,
                            style: TextStyle(fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Icon(
                    Icons.more_vert,
                    size: 16.0,
                  ),
                  onTap: () {
                    print('tapped');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
