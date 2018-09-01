import 'package:flutter/material.dart';
import '../../ui-elemnts/item.dart';
import '../../ui-elemnts/card-header.dart';

void main() => runApp(MaterialApp(
      home: HomeSubTab(),
    ));

class HomeSubTab extends StatefulWidget {
  @override
  _HomeSubTabState createState() => _HomeSubTabState();
}

class _HomeSubTabState extends State<HomeSubTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5.0),
      physics: ClampingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0))),
          child: Container(
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
            child: Column(children: <Widget>[
              CardTitleWidget('New + updated Games', 'YOUR-ROUTE-NAME'),
              Padding(
                padding: EdgeInsets.only(left: 15.0, top: 20.0),
                child: ItemWidget('Anger Birds 2 Full Game', '20 MB'),
              ),
            ]),
          ),
        );
      },
    );
  }
}
