import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/screens/segmented_control.dart';

class PhotoListJumbotronView extends StatefulWidget {
  PhotoListJumbotronView({Key key, this.onListOrderByChange}) : super(key: key);

  final void Function(ListOrderBy listOrderBy) onListOrderByChange;

  @override
  State<StatefulWidget> createState() => _PhotoListJumbotronViewState();
}

class _PhotoListJumbotronViewState extends State<PhotoListJumbotronView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 256.0,
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(children: [
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
              margin: const EdgeInsets.only(top: 3.0),
              padding: const EdgeInsets.only(right: 55),
              child: Text(
                "Beautiful, free photos.\nGifted by the world’s most generous community of photographers. 🎁",
                style: TextStyle(color: Colors.grey, fontSize: 12, height: 1.5),
              )),
          Spacer(),
          Container(
            child: SegmentedControl(
                items: ListOrderBy.values
                        .map((e) => SegmentedControlItem(e.key, e.title))
                        .toList(),
                onSelect: (index, item) {
                  if (index >= 0 && index <= ListOrderBy.values.length - 1) {
                    if (widget.onListOrderByChange != null) {
                      widget.onListOrderByChange(ListOrderBy.values[index]);
                    }
                  }

                  print('${item.title} is selected');
                }),
          )
        ]));
  }
}
