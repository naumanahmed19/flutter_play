import 'package:flutter/material.dart';
import '../ui-elemnts/search.dart';
import '../pages/tab_home.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  ScrollController _scrollController = new ScrollController();

  Widget _header() => SliverAppBar(
        title: Container(child: SearchWidget(), height: 900.0),
        elevation: 0.0,
        bottom: TabBar(
          indicatorPadding: EdgeInsets.symmetric(horizontal: 10.0),
          labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: 'HOME'),
            Tab(text: 'GAMES'),
          ],
        ),
      );

  Widget _tabsViews() {
    return TabBarView(
      physics: new NeverScrollableScrollPhysics(),
      children: [
        HomeTab(scrollController: _scrollController),
        Icon(Icons.directions_transit),
        Icon(Icons.directions_bike),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: new NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              _header(),
            ];
          },
          body: _tabsViews(),
        ),
      ),
    );
  }
}
