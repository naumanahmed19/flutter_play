import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;
  SearchWidget(this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.only(top: 10.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: Icon(
                Icons.menu,
                color: Colors.black54,
              ),
              onTap: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Find our product"),
              ),
            ),
            Icon(
              Icons.mic,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
