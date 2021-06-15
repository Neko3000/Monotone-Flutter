import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monotone_flutter/components/base_widget_state.dart';

typedef SelectCallBack = void Function(int index, SegmentedControlItem item);

class SegmentedControlItem {
  SegmentedControlItem(this.key, this.title);

  final String key;
  final String title;
}

class SegmentedControl extends StatefulWidget {
  SegmentedControl({Key key, this.items, this.selectedIndex = 0,  this.onSelect}) : super(key: key);

  final List<SegmentedControlItem> items;
  final int selectedIndex;

  final SelectCallBack onSelect;

  @override
  State<StatefulWidget> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends BaseWidgetState<SegmentedControl> {
  int selectedIndex;

  @override
  void initState() {
    super.initState();

    this.selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.items.length,
          itemBuilder: (BuildContext context, int index) {
            bool selected = (this.selectedIndex == index);

            return GestureDetector(
              onTapUp: (TapUpDetails details) {
                if (widget.onSelect != null) {
                  widget.onSelect(index, widget.items[index]);
                }

                setState(() {
                  this.selectedIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: selected ? Colors.black : Colors.transparent,
                            width: 1.0))),
                child: Text(
                  '${widget.items[index].title}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: selected ? Colors.black : Colors.grey),
                ),
              ),
            );
          }),
    );
  }
}
