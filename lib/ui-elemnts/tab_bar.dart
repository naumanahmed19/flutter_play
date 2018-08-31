import 'package:flutter/material.dart';
import '../models/page.dart';

class TabBarWidget extends StatelessWidget {
  TabController _controller;
  List<Page> _allPages;
  TabBarWidget(this._controller, this._allPages);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0))),
      margin: EdgeInsets.all(0.0),
      child: TabBar(
        labelStyle: TextStyle(fontSize: 12.0),
        controller: _controller,
        isScrollable: true,
        labelColor: Colors.black45,
        tabs: _allPages.map((Page page) {
          return Tab(
            text: page.text,
            icon: new Icon(
              page.icon,
              size: 18.0,
              color: Colors.black45,
            ),
          );
        }).toList(),
      ),
    );
  }
}
