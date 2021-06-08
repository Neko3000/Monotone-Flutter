import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoListJumbotronView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column( children: [
          Container(
            width: double.infinity,
            child: Text(
              "Unsplash",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.only(right: 55),
              child: Text(
                "Beautiful, free photos. Gifted by the world’s most generous community of photographers. 🎁",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )),
          Spacer(),
          Container(
            width: double.infinity,
            child: Text(
              "Editorial or Following",
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]));

  }
}