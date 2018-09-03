import 'package:flutter/material.dart';
import '../../models/product.dart';

class ProductStats extends StatelessWidget {
  final Product product;
  ProductStats(this.product);
  _downloads(Color color) => FlatButton(
        padding: EdgeInsets.all(10.0),
        onPressed: () {
          print("some Text");
        },
        child: Column(
          children: <Widget>[
            Icon(
              Icons.offline_bolt,
              size: 50.0,
              color: color,
            ),
            SizedBox(height: 5.0),
            Text(
              "Downloads",
              style: TextStyle(
                fontSize: 10.0,
              ),
            )
          ],
        ),
      );

  _rating(Color color) => FlatButton(
        padding: EdgeInsets.all(10.0),
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Icon(
              Icons.brightness_low,
              size: 50.0,
              color: color,
            ),
            SizedBox(height: 5.0),
            Text(
              '34566',
              style: TextStyle(
                fontSize: 10.0,
              ),
            )
          ],
        ),
      );

  _category(Color color) => FlatButton(
        padding: EdgeInsets.all(10.0),
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Icon(
              Icons.toys,
              size: 50.0,
              color: color,
            ),
            SizedBox(height: 5.0),
            Text(
              product.category,
              style: TextStyle(
                fontSize: 10.0,
              ),
            )
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox.fromSize(
      size: const Size.fromHeight(90.0),
      child: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _downloads(color),
              _rating(color),
              _category(color),
              _downloads(color),
              _rating(color),
              _category(color),
            ],
          );
        },
      ),
    );
  }
}
