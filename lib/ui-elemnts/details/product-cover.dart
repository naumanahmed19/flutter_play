import 'package:flutter/material.dart';

class ProductCover extends StatelessWidget {
  final double _appBarHeight = 175.0;
  final String url;

  ProductCover(this.url);

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
      pinned: false,
      floating: false,
      snap: false,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: 'Search Flutter Play',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          tooltip: 'More Options',
          onPressed: () {},
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
