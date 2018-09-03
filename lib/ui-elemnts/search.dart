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
            Stack(
              alignment: Alignment(
                2.4,
                -1.4,
              ),
              children: <Widget>[
                Icon(
                  Icons.brightness_1,
                  color: Colors.red,
                  size: 14.0,
                ),
                GestureDetector(
                  child: Icon(
                    Icons.menu,
                    color: Colors.black54,
                  ),
                  onTap: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                ),
              ],
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Search..."),
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
