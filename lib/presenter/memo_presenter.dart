import 'package:dio/dio.dart';
import 'package:flutterdemo/api/dio_helper.dart';
import 'package:flutterdemo/base/presenter.dart';
import 'package:flutterdemo/model/nsis_memo_data.dart';
import 'package:flutterdemo/model/nsis_result.dart';

class MemoPresenter extends BasePresenter {
  Future<List<MemoInfo>> getMemoData() async {
    Response resp = await DioClient.getInstance()
        .setNsisOption()
        .dio
        .get("nsis/memorandum");
    List<MemoInfo> infos = [];
    List jsonMemoData =  resp.data["data"];
    jsonMemoData.forEach((item){
      infos.add(MemoInfo.fromJson(item));
    });
    print("nsis-data" + resp.data["data"].toString());
    return infos;
  }
}
