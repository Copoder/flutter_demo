import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/compent/base_page.dart';

class BottomSheetRouter extends StatefulWidget {
  static String routerName = "bottom_sheet_router";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomState();
  }
}

class BottomState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BasePage(Center(
      child: RaisedButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (buildContext) {
                return SizedBox(
                  height: 100,
                  child: Text("this is bottom sheet`"),
                );
              });
        },
        child: Text("show Bottom sheet"),
      ),
    ));
  }
}
