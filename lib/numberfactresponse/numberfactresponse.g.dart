// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numberfactresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Numberfactresponse _$NumberfactresponseFromJson(Map<String, dynamic> json) =>
    Numberfactresponse(
      text: json['text'] as String?,
      number: json['number'] as num?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberfactresponseToJson(Numberfactresponse instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
