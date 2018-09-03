import 'package:flutter/material.dart';
import '../../helpers/hero_photo_viewer.dart';

class ProductAttachments extends StatelessWidget {
  final List<String> attachments;
  ProductAttachments(this.attachments);

  _attachmentWithPhotoView(BuildContext context, int index) => Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HeroPhotoViewWrapper(
                      heroTag: 'attachment-' + index.toString(),
                      imageProvider: NetworkImage(attachments[index]),
                    ),
              ),
            );
          },
          child: Hero(
            tag: 'attachment-' + index.toString(),
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
              child: Image.network(attachments[index]),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size.fromHeight(250.0),
      child: ListView.builder(
        itemCount: attachments.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _attachmentWithPhotoView(context, index);
        },
      ),
    );
  }
}
