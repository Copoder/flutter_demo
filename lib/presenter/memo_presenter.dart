import 'package:dio/dio.dart';
import 'package:flutterdemo/api/dio_helper.dart';
import 'package:flutterdemo/base/presenter.dart';
import 'package:flutterdemo/model/nsis_memo_data.dart';
import 'package:flutterdemo/model/nsis_result.dart';

class MemoPresenter extends BasePresenter {
  Future<List<MemoInfo>> getMemoData() async {
    List<MemoInfo> info;
    Response<Result<List<MemoInfo>>> resp = await DioClient.getInstance()
        .setNsisOption()
        .dio
        .get("nsis/memorandum");
    print("nsis-data" + resp.data.toString());
    return resp.data.data;
  }
}
