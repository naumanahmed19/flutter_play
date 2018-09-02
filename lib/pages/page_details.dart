import 'package:flutter/material.dart';
import '../ui-elemnts/product-header.dart';
import '../ui-elemnts/item-cover.dart';
import '../mock-data/products.dart';
import '../models/product.dart';

class DetailsPage extends StatefulWidget {
  final int productIndex;
  DetailsPage(this.productIndex);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>();

  @override
  initState() {
    super.initState();
  }

  // Widget _list() {
  //   return SliverList(
  //     delegate: new SliverChildListDelegate(<Widget>[
  //       ItemHeader(),
  //       new _ContactCategory(
  //         icon: Icons.call,
  //         children: <Widget>[
  //           _ContactItem(
  //             icon: Icons.message,
  //             tooltip: 'Send message',
  //             onPressed: () {
  //               _scaffoldKey.currentState.showSnackBar(const SnackBar(
  //                   content: const Text(
  //                       'Pretend that this opened your SMS application.')));
  //             },
  //             lines: <String>[
  //               'Mobile',
  //             ],
  //           ),
  //           _ContactItem(
  //             icon: Icons.message,
  //             tooltip: 'Send message',
  //             onPressed: () {
  //               _scaffoldKey.currentState.showSnackBar(const SnackBar(
  //                   content: const Text('A messaging app appears.')));
  //             },
  //             lines: <String>[
  //               'Phone',
  //             ],
  //           ),
  //         ],
  //       ),
  //       new _ContactCategory(
  //         icon: Icons.contact_mail,
  //         children: <Widget>[
  //           new _ContactItem(
  //             icon: Icons.email,
  //             tooltip: 'Send personal e-mail',
  //             onPressed: () {
  //               _scaffoldKey.currentState.showSnackBar(const SnackBar(
  //                   content: const Text(
  //                       'Here, your e-mail application would open.')));
  //             },
  //             lines: <String>[
  //               'Personal',
  //             ],
  //           ),
  //         ],
  //       ),
  //       new _ContactCategory(
  //         icon: Icons.location_on,
  //         children: <Widget>[
  //           new _ContactItem(
  //             icon: Icons.map,
  //             tooltip: 'Open map',
  //             onPressed: () {
  //               _scaffoldKey.currentState.showSnackBar(const SnackBar(
  //                   content:
  //                       const Text('This would show a map of San Francisco.')));
  //             },
  //             lines: <String>[
  //               'Home',
  //             ],
  //           ),
  //           new _ContactItem(
  //             icon: Icons.map,
  //             tooltip: 'Open map',
  //             onPressed: () {
  //               // Navigator.pushNamed(context, '/profile-step-location');
  //             },
  //             lines: <String>[
  //               'City',
  //             ],
  //           ),
  //         ],
  //       ),
  //     ]),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Product product = fetchProduct(widget.productIndex);

    return new Theme(
      data: new ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        platform: Theme.of(context).platform,
      ),
      child: Scaffold(
        key: _scaffoldKey,
        body: new CustomScrollView(
          slivers: <Widget>[
            ItemCover(),
            // ItemHeader(),
            // _list(),
            SliverToBoxAdapter(
              child: new Stack(
                children: <Widget>[
                  new Container(
                    // padding: const EdgeInsets.only(top: _kFabHalfSize),
                    // width: fullWidth ? null : _kRecipePageMaxWidth,
                    child: ProductHeader(product),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//extra class
class _ContactItem extends StatelessWidget {
  _ContactItem({Key key, this.icon, this.lines, this.tooltip, this.onPressed})
      : assert(lines.length > 1),
        super(key: key);

  final IconData icon;
  final List<String> lines;
  final String tooltip;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final List<Widget> columnChildren = lines
        .sublist(0, lines.length - 1)
        .map((String line) => new Text(line))
        .toList();
    columnChildren
        .add(new Text(lines.last, style: themeData.textTheme.caption));

    final List<Widget> rowChildren = <Widget>[
      new Expanded(
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columnChildren))
    ];

    if (icon != null) {
      rowChildren.add(new SizedBox(
          width: 72.0,
          child: new IconButton(
              icon: new Icon(icon),
              color: themeData.primaryColor,
              onPressed: onPressed)));
    }
    return new MergeSemantics(
      child: new Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: rowChildren)),
    );
  }
}

//

class _ContactCategory extends StatelessWidget {
  const _ContactCategory({Key key, this.icon, this.children}) : super(key: key);

  final IconData icon;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return new Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: new BoxDecoration(
          border: new Border(
              bottom: new BorderSide(color: themeData.dividerColor))),
      child: new DefaultTextStyle(
        style: Theme.of(context).textTheme.subhead,
        child: new SafeArea(
          top: false,
          bottom: false,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  width: 72.0,
                  child: new Icon(icon, color: themeData.primaryColor)),
              new Expanded(child: new Column(children: children))
            ],
          ),
        ),
      ),
    );
  }
}
