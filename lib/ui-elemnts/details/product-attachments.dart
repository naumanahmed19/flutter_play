import 'package:flutter/material.dart';

class ProductAttachments extends StatelessWidget {
  final List<String> attachments;
  ProductAttachments(this.attachments);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size.fromHeight(250.0),
      child: ListView.builder(
        itemCount: attachments.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
            child: Image.network(attachments[index]),
          );
        },
      ),
    );
  }
}
