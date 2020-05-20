import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/base/view.dart';
import 'package:flutterdemo/compent/base_page.dart';
import 'package:flutterdemo/model/test_data.dart';
import 'package:flutterdemo/presenter/test_net_request_presenter.dart';

class TestNetRequestRouter extends StatefulWidget {
  static String routerName = "test_net_request_router";

  @override
  State<StatefulWidget> createState() {
    return TestNetRequestState();
  }
}

class TestNetRequestState
    extends BaseView<TestNetRequestRouter, TestNetRequestPresenter> {
  String resp = "";

  @override
  void initState() {
    super.initState();
    mPresenter.getTestData().then((datas) {
      if (datas != null) {
        resp = datas;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("setstate");
    print(resp);
    return Scaffold(
      appBar: AppBar(
        title: Text("request demo"),
      ),
      body: getWidget(),
    );
  }

  Widget getWidget() {
    if (resp.isEmpty) {
      print("resp is  empty");
      return Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      );
    }
    // print("resp is not empty");
    return Container(
      color: Colors.amber,
      child: Text(resp),
    );
  }

  @override
  TestNetRequestPresenter createPresenter() {
    return TestNetRequestPresenter();
  }
}
