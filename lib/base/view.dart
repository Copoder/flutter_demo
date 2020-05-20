import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/base/presenter.dart';

abstract class BaseView<V extends StatefulWidget, T extends BasePresenter>
    extends State {
  T mPresenter;

  @override
  void initState() {
    super.initState();
    mPresenter = createPresenter();
  }

  T createPresenter() {}
}
