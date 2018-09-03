import 'package:flutter/material.dart';

enum DismissDialogAction {
  cancel,
  discard,
  save,
}

class ProdutDescriptionDialog extends StatefulWidget {
  final String title;
  final String description;

  ProdutDescriptionDialog({this.title, this.description});

  @override
  ProdutDescriptionDialogState createState() =>
      new ProdutDescriptionDialogState();
}

class ProdutDescriptionDialogState extends State<ProdutDescriptionDialog> {
  @override
  Widget build(BuildContext context) {
    final Color _color = Colors.grey[800];

    return Scaffold(
      appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(color: _color),
          ),
          elevation: 0.5,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
            color: _color,
          )),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Text(
          widget.description,
          style: TextStyle(
            color: _color,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
