import 'package:flutter/material.dart';

enum AppBarBehavior { normal, pinned, floating, snapping }

class ProductCover extends StatelessWidget {
  final double _appBarHeight = 175.0;
  final String url;

  ProductCover(this.url);

  AppBarBehavior _appBarBehavior = AppBarBehavior.pinned;
  _cover() {
    return FadeInImage(
      image: NetworkImage(url),
      placeholder: AssetImage('assets/x.jpg'),
      fit: BoxFit.cover,
      height: _appBarHeight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: _appBarHeight,
      pinned: _appBarBehavior == AppBarBehavior.pinned,
      floating: _appBarBehavior == AppBarBehavior.floating ||
          _appBarBehavior == AppBarBehavior.snapping,
      snap: _appBarBehavior == AppBarBehavior.snapping,
      actions: <Widget>[
        new IconButton(
          icon: const Icon(Icons.search),
          tooltip: 'Search Flutter Play',
          onPressed: () {},
        ),
        new PopupMenuButton<AppBarBehavior>(
          onSelected: (AppBarBehavior value) {},
          itemBuilder: (BuildContext context) =>
              <PopupMenuItem<AppBarBehavior>>[
                const PopupMenuItem<AppBarBehavior>(
                    value: AppBarBehavior.normal,
                    child: const Text('App bar scrolls away')),
                const PopupMenuItem<AppBarBehavior>(
                    value: AppBarBehavior.pinned,
                    child: const Text('App bar stays put')),
                const PopupMenuItem<AppBarBehavior>(
                    value: AppBarBehavior.floating,
                    child: const Text('App bar floats')),
                const PopupMenuItem<AppBarBehavior>(
                    value: AppBarBehavior.snapping,
                    child: const Text('App bar snaps')),
              ],
        ),
      ],
      flexibleSpace: new FlexibleSpaceBar(
        background: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _cover(),
            const DecoratedBox(
              decoration: const BoxDecoration(
                gradient: const LinearGradient(
                  begin: const Alignment(0.0, -1.0),
                  end: const Alignment(0.0, -0.4),
                  colors: const <Color>[
                    const Color(0x60000000),
                    const Color(0x00000000)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
