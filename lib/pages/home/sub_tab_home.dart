import 'package:flutter/material.dart';
import '../../ui-elemnts/card-section.dart';

import '../../mock-data/products.dart';

void main() => runApp(MaterialApp(
      home: HomeSubTab(),
    ));

class HomeSubTab extends StatefulWidget {
  @override
  _HomeSubTabState createState() => _HomeSubTabState();
}

class _HomeSubTabState extends State<HomeSubTab> {
  _cardHeader(String title, String route) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Text(
              "MORE",
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5.0),
      physics: ClampingScrollPhysics(),
      itemCount: sections.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0))),
          child: Container(
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
            child: Column(children: <Widget>[
              _cardHeader(sections[index].type, 'YOUR-ROUTE-NAME'),
              Padding(
                padding: EdgeInsets.only(left: 15.0, top: 20.0),
                child: CardSection(sections[index].products),
              ),
            ]),
          ),
        );
      },
    );
  }
}
