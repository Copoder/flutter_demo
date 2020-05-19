import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/compent/base_page.dart';

class LayoutRouter extends StatefulWidget {
  static String routerName = "layout_router";

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends State {
  @override
  Widget build(BuildContext context) {
    return BasePage(Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.cyan,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 50,
                color: Colors.deepOrange,
              ),
            )
          ],
        )
      ],
    ));
  }
}
