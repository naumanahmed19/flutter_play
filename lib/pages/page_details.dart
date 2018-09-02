import 'package:flutter/material.dart';
import '../ui-elemnts/details/product-content.dart';
import '../ui-elemnts//details/product-cover.dart';
import '../mock-data/products.dart';
import '../models/product.dart';

class DetailsPage extends StatefulWidget {
  final int productIndex;
  DetailsPage(this.productIndex);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Product product = fetchProduct(widget.productIndex);
    return new Theme(
      data: new ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        platform: Theme.of(context).platform,
      ),
      child: Scaffold(
        key: _scaffoldKey,
        body: new CustomScrollView(
          slivers: <Widget>[
            ProductCover(product.bannerUrl),
            SliverToBoxAdapter(
              child: new Stack(
                children: <Widget>[
                  new Container(
                    child: ProductContent(product),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
