import 'package:flutter/material.dart';
import '../models/page.dart';

class TabBarWidget extends StatelessWidget {
  final TabController _controller;
  final List<Page> _allPages;
  TabBarWidget(this._controller, this._allPages);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0))),
      margin: EdgeInsets.only(bottom: 5.0),
      child: TabBar(
        labelStyle: TextStyle(fontSize: 12.0),
        controller: _controller,
        isScrollable: true,
        indicatorColor: Colors.white,
        labelColor: Colors.green,
        unselectedLabelColor: Colors.grey,
        tabs: _allPages.map((Page page) {
          return Tab(
            text: page.text,
            icon: new Icon(page.icon, size: 18.0),
          );
        }).toList(),
      ),
    );
  }
}
