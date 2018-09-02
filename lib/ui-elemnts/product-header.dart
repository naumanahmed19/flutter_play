import 'package:flutter/material.dart';
import '../ui-elemnts/product-stats.dart';
import '../ui-elemnts/product-thumbnail.dart';
import '../models/product.dart';

class ProductHeader extends StatelessWidget {
  final Product product;
  ProductHeader(this.product);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              //  crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ListTile(
                  leading: ProductThumbnail(product.thumbnailUrl, product.id),
                  title: Text(
                    product.title,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Text("Playgendery"),
                      ),
                      Text(product.size),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              RaisedButton(
                                elevation: 0.0,
                                color: Theme.of(context).accentColor,
                                textColor: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 30.0),
                                child: Text('INSTALL'),
                                onPressed: () {},
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Contains ads - In app purchase',
                                style: TextStyle(fontSize: 12.0),
                              )
                            ],
                          ),
                        ],
                      ),
                      Divider(height: 20.0),
                      FlatButton(
                        child: Text(
                          "Top Free Board",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        textColor: Theme.of(context).primaryColor,
                        onPressed: () {},
                      ),
                      Divider(height: 20.0),
                      ProductStats(product),
                      Divider(height: 20.0),
                      Text(
                        product.description,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
