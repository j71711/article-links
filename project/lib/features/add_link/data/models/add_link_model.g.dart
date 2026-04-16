// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_link_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddLinkModel _$AddLinkModelFromJson(Map<String, dynamic> json) =>
    _AddLinkModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$AddLinkModelToJson(_AddLinkModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
