import 'package:dio/dio.dart';
import 'package:flutterdemo/api/dio_helper.dart';
import 'package:flutterdemo/base/presenter.dart';
import 'package:flutterdemo/model/test_data.dart';

class TestNetRequestPresenter extends BasePresenter {
  Future<String> getTestData() {
    Dio dio = DioClient.getInstance().dio;
    BaseOptions op = BaseOptions();
    op.baseUrl = "http://wcf.open.cnblogs.com/";
    dio.options = op;

    return dio.get("news/GetData").then((str) {
      print(str.data);
      return str.data;
    });
  }
}
