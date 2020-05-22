import 'package:json_annotation/json_annotation.dart';


@JsonSerializable()
class Result {
  int code;
  bool success;
  String message;

//  int timestamp;
  var data;
}
