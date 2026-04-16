// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LinkModel _$LinkModelFromJson(Map<String, dynamic> json) => _LinkModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$LinkModelToJson(_LinkModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
    };
