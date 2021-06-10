import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';

class PhotoListHeaderView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PhotoListHeaderViewState();
}

class _PhotoListHeaderViewState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140.0,
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(children: [
          Container(
              width: double.infinity,
              child: CupertinoSearchTextField(
                placeholder: 'Search',
              )),
          Spacer(),
          Container(
            width: double.infinity,
            height: 35.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: UnsplashTopic.values.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    color: Colors.orange,
                    child: Text('${UnsplashTopic.values[index].title}'),
                  );
                }),
          )
        ]));
  }
}
