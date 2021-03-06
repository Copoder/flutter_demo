import 'package:json_annotation/json_annotation.dart';

part 'nsis_memo_data.g.dart';

@JsonSerializable()
class MemoInfo {
  String content;
  String endDate;
  String createDate;
  bool deleted;
  String deptCode;
  int id;
  String modifyDate;
  String operatorId;
  String startDate;
  String type;
  String typeColor;
  bool showPortal;
  int fontSize;

  MemoInfo() {}

  factory MemoInfo.fromJson(Map<String, dynamic> json) {
    return _$MemoInfoFromJson(json);
  }
}
