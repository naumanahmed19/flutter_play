import 'package:flutter/material.dart';
import '../details/product-description-dialog.dart';

class ProductDescription extends StatelessWidget {
  final String title;
  final String description;
  ProductDescription({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 20.0),
      FlatButton(
        child: Text(
          "READ MORE",
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        textColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute<DismissDialogAction>(
                builder: (BuildContext context) => ProdutDescriptionDialog(
                      title: title,
                      description: description,
                    ),
                fullscreenDialog: true,
              ));
        },
      ),
    ]);
  }
}
