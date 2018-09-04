import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class HeroPhotoViewWrapper extends StatelessWidget {
  final ImageProvider imageProvider;
  final Widget loadingChild;
  final String heroTag;
  final dynamic minScale;
  final dynamic maxScale;

  const HeroPhotoViewWrapper(
      {this.imageProvider,
      this.loadingChild,
      this.heroTag,
      this.minScale,
      this.maxScale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: null,
          child: Divider(
            color: Colors.grey[400],
            height: 1.0,
          ),
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: new PhotoView(
          imageProvider: imageProvider,
          loadingChild: loadingChild,
          backgroundColor: Colors.black,
          minScale: minScale,
          maxScale: maxScale,
          heroTag: heroTag,
        ),
      ),
    );
  }
}
