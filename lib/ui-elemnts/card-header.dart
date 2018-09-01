import 'package:flutter/material.dart';

class CardTitleWidget extends StatelessWidget {
  CardTitleWidget(this.title, this.route);

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          Text(
            "MORE",
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.green),
          ),
        ],
      ),
    );
  }
}
