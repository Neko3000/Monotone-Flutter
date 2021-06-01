import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monotone_flutter/models/photo/photo.dart';

class PhotoGridViewCell extends StatelessWidget {
  PhotoGridViewCell({Key key, this.photo}) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage('assets/unsplash-logo.png'),
                width: 30.0,
                height: 30.0,
              )
          ),
          CachedNetworkImage(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              imageUrl: photo.urls.full,
              // placeholder: (context, url) => null,
              errorWidget: (context, url, error) => Icon(Icons.error)),

          // Container(color: Colors.red.withOpacity(0.7),),
          // Container(color: Colors.blue.withOpacity(0.4),)
        ],
      ),
    );
  }
}
