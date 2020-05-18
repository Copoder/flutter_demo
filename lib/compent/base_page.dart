import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  Widget child;

  BasePage(this.child);

  @override
  State<StatefulWidget> createState() {
    return BasePageState(child);
  }
}

class BasePageState extends State {
  Widget child;

  BasePageState(this.child);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Copoder's Flutter Demo"),
      ),
      body: child,
    );
  }
}
