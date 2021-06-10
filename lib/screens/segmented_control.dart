import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/screens/base_widget_state.dart';

class SegmentedControlItem{
  SegmentedControlItem(this.key, this.title);
  final String key;
  final String title;
}

class SegmentedControl extends StatefulWidget {
  SegmentedControl({Key key, this.items}):super(key: key);

  final List<SegmentedControlItem> items;

  @override
  State<StatefulWidget> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends BaseWidgetState<SegmentedControl> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: this.widget.items.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              color: Colors.orange,
              child: Text('${this.widget.items[index].title}'),
            );
          }),
    );
  }

}