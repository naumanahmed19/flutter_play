import 'package:flutter/material.dart';

import '../ui-elemnts/drawer.dart';
import '../ui-elemnts/search.dart';
import '../pages/tab_home.dart';
import '../pages/tab_games.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = new ScrollController();
  double offset = 0.0;

  Widget _header() => SliverAppBar(
        title: Container(child: SearchWidget(_scaffoldKey)),
        elevation: 0.0,
        automaticallyImplyLeading: false,
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
        GameTab(scrollController: _scrollController),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerWidget(),
        body: NestedScrollView(
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
