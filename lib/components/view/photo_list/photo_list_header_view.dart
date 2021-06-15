import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/enums/photo/unsplash_topic.dart';
import 'package:monotone_flutter/components/list_view/segmented_control.dart';

class PhotoListHeaderView extends StatefulWidget {
  PhotoListHeaderView(
      {Key key,
      this.selectedItemKey,
      this.onListOrderByChange,
      this.onTopicChangeCallBack,
      this.onSearchQueryChangeCallBack})
      : super(key: key);

  final String selectedItemKey;

  final void Function(ListOrderBy listOrderBy) onListOrderByChange;
  final void Function(UnsplashTopic topic) onTopicChangeCallBack;
  final void Function(String searchQuery) onSearchQueryChangeCallBack;

  @override
  State<StatefulWidget> createState() => _PhotoListHeaderViewState();
}

class _PhotoListHeaderViewState extends State<PhotoListHeaderView> {
  String selectedItemKey;

  @override
  void initState() {
    super.initState();

    this.selectedItemKey = widget.selectedItemKey;
  }

  @override
  Widget build(BuildContext context) {
    List<SegmentedControlItem> items = ListOrderBy.values
            .map((e) => SegmentedControlItem(e.key, e.title))
            .toList() +
        UnsplashTopic.values
            .map((e) => SegmentedControlItem(e.key, e.title))
            .toList();

    int selectedIndex =
        items.indexWhere((element) => element.key == this.selectedItemKey);

    return Container(
        height: 140.0,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(children: [
          Container(
              width: double.infinity,
              child: CupertinoSearchTextField(
                placeholder: 'Search',
                onSubmitted: (String value) {
                  if (widget.onSearchQueryChangeCallBack != null) {
                    widget.onSearchQueryChangeCallBack(value);
                  }
                },
              )),
          Spacer(),
          SegmentedControl(
            items: items,
            selectedIndex: selectedIndex,
            onSelect: (index, item) {
              if (index >= 0 && index < ListOrderBy.values.length) {
                if (widget.onListOrderByChange != null) {
                  widget.onListOrderByChange(ListOrderBy.values[index]);
                }
              } else if (index >= ListOrderBy.values.length &&
                  index <
                      ListOrderBy.values.length + UnsplashTopic.values.length) {
                if (widget.onTopicChangeCallBack != null) {
                  int topicIndex = index - ListOrderBy.values.length;
                  widget
                      .onTopicChangeCallBack(UnsplashTopic.values[topicIndex]);
                }
              }

              print('${item.title} is selected');
            },
          )
        ]));
  }
}
