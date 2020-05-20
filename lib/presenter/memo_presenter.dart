import 'package:flutterdemo/api/dio_helper.dart';
import 'package:flutterdemo/base/presenter.dart';
import 'package:flutterdemo/model/nsis_memo_data.dart';

class MemoPresenter extends BasePresenter {
  List<MemoInfo> getMemoData() {
    List<MemoInfo> info;
    DioClient.getInstance().setNsisOption();
  }
}
