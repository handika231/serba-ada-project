// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      top: json['top'] == null
          ? null
          : Top.fromJson(json['top'] as Map<String, dynamic>),
      middletop: json['middletop'] == null
          ? null
          : Middletop.fromJson(json['middletop'] as Map<String, dynamic>),
      middle: json['middle'] == null
          ? null
          : Middle.fromJson(json['middle'] as Map<String, dynamic>),
      bottom: json['bottom'] == null
          ? null
          : Bottom.fromJson(json['bottom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'top': instance.top,
      'middletop': instance.middletop,
      'middle': instance.middle,
      'bottom': instance.bottom,
    };
