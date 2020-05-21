// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nsis_memo_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemoInfo _$MemoInfoFromJson(Map<String, dynamic> json) {
  return MemoInfo()
    ..content = json['content'] as String
    ..endDate = json['endDate'] as String
    ..createDate = json['createDate'] as String
    ..deleted = json['deleted'] as bool
    ..deptCode = json['deptCode'] as String
    ..id = json['id'] as String
    ..modifyDate = json['modifyDate'] as String
    ..operatorId = json['operatorId'] as String
    ..startDate = json['startDate'] as String
    ..type = json['type'] as String
    ..typeColor = json['typeColor'] as String
    ..showPortal = json['showPortal'] as bool
    ..fontSize = json['fontSize'] as String;
}

Map<String, dynamic> _$MemoInfoToJson(MemoInfo instance) => <String, dynamic>{
      'content': instance.content,
      'endDate': instance.endDate,
      'createDate': instance.createDate,
      'deleted': instance.deleted,
      'deptCode': instance.deptCode,
      'id': instance.id,
      'modifyDate': instance.modifyDate,
      'operatorId': instance.operatorId,
      'startDate': instance.startDate,
      'type': instance.type,
      'typeColor': instance.typeColor,
      'showPortal': instance.showPortal,
      'fontSize': instance.fontSize
    };
