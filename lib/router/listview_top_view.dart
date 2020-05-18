import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/compent/base_page.dart';

class ListViewTopView extends StatefulWidget {
  static String routerName = "list_view_top_view";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListViewState();
  }
}

class ListViewState extends State {
  Widget header;
  bool isShowHeader = false;
  List<String> items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items = List();
    for (int i = 0; i < 50; i++) {
      items.add("i'm item $i");
    }

    header = Container(
      child: Image.network(
        "http://attach.bbs.miui.com/forum/201408/07/194456i55q58pqnb55fi88.jpg",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BasePage(ListView.builder(
        itemCount: header == null ? items.length : items.length + 1,
        itemBuilder: createListView));
  }

  Widget createListView(BuildContext context, int index) {
    int dataIndex = index;

    if (header != null && index == 0) {
      isShowHeader = true;
      return header;
    }
    if (isShowHeader) {
      dataIndex = index - 1;
    }

    return Container(
      alignment: Alignment.center,
      height: 50,
      child: Text(items[dataIndex]),
    );
  }
}
