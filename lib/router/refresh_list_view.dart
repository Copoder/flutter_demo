import 'dart:async';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/compent/base_page.dart';

class RefreshListViewRouter extends StatefulWidget {
  static String routerName = "refresh_list_view_router";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RefreshState();
  }
}

class RefreshState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BasePage(RefreshIndicator(
      onRefresh: () {
        Completer completer = Completer();
        Timer(Duration(seconds: 1), () {
          completer.complete();
        });
        return completer.future;
      },
      child: Scrollbar(
          child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text("$index"),
                  ),
                  subtitle: Text("this is index of item $index"),
                  title: Text("Item $index"),
                );
              })),
    ));
  }
}
