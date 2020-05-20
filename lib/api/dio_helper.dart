import 'package:dio/dio.dart';

class DioClient {
  static DioClient instance;
  Dio dio;

  static DioClient getInstance() {
    if (instance == null) {
      instance = DioClient();
    }
    return instance;
  }

  DioClient() {
    dio = Dio();
  }

  DioClient setNsisOption() {
    BaseOptions options = BaseOptions();
    options.baseUrl = "http://192.168.135.240:8888/";
    options.headers = {
      "product": "NSIS",
      "Activation":
          "p9y6qfeI71ipy5kp4VAvvLPdLdGYxzn7IIDVx+d9Q7pQb2IrUi+ic7bbfARZ0fp9uIB1ScJOzjwR3u+3oGfWpHfIi5WcX6gHuoWGweIskBSQxssJNH4v2yZDnM/P/hMeh3QftClv3gdBjkngGs1VzK6/UxWYXWxypUAJLm+HmwAI/BntjJDCu/c0FjOFIjP2V6QH8746PSaR/SP11ptjgtA70HnWepKI5Szo9YciZcrfcb4IbJoD60OLg9fpdcYh0hOCQgYln6cJmWIWDLgMCqnEaFoqvUhdjSLBBTGYtGGDGjycVvOat+Va8+Uui0R3UccqZP8My0z5Pi8CdTqo+lo0aQWsqPxHbZBR0TmntIuApZ1lbEs2pVhpyqhLpmJY",
      "ScreenMac": "9659e0fe9ef273b0",
      "DeptCode": "1015"
    };
    options.sendTimeout = 5000;
    options.receiveTimeout = 5000;
    dio.options = options;
    return this;
  }
}
