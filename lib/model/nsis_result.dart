import 'package:json_annotation/json_annotation.dart';


@JsonSerializable()
class Result<T> {
  int code;
  bool success;
  String message;

//  int timestamp;
  T data;
}
