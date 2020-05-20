import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/base/view.dart';
import 'package:flutterdemo/compent/base_page.dart';
import 'package:flutterdemo/model/nsis_memo_data.dart';
import 'package:flutterdemo/presenter/memo_presenter.dart';

class MemoRouter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MeMoState();
  }
}

class MeMoState extends BaseView<MemoRouter, MemoPresenter> {
  List<MemoInfo> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = mPresenter.getMemoData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BasePage(ListView.builder(itemBuilder: (context, inidex) {
      return Text(data[inidex].content);
    }));
  }

  @override
  MemoPresenter createPresenter() {
    return MemoPresenter();
  }
}
