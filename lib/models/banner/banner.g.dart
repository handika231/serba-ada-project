// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) => Banner(
      version: json['version'] as int?,
      queryString: json['queryString'] == null
          ? null
          : QueryString.fromJson(json['queryString'] as Map<String, dynamic>),
      response: json['response'] == null
          ? null
          : Response.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'version': instance.version,
      'queryString': instance.queryString,
      'response': instance.response,
    };
