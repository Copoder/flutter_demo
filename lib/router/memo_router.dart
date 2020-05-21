import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/base/view.dart';
import 'package:flutterdemo/model/nsis_memo_data.dart';
import 'package:flutterdemo/presenter/memo_presenter.dart';

class MemoRouter extends StatefulWidget {
  static String routerName = "memo_router";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MeMoState();
  }
}

class MeMoState extends BaseView<MemoRouter, MemoPresenter> {
  List<MemoInfo> data = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mPresenter.getMemoData().then((data) {
      if (data != null) {
        this.data = data;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getCurrentWidget(),
    );
  }

  Widget getCurrentWidget() {
    if (data == null || data.length == 0) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(itemBuilder: (context, index) {
        return Text(data[index].content);
      });
    }
  }

  @override
  MemoPresenter createPresenter() {
    return MemoPresenter();
  }
}
