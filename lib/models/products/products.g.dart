// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      version: json['version'] as int?,
      queryString: json['queryString'] == null
          ? null
          : QueryString.fromJson(json['queryString'] as Map<String, dynamic>),
      response: json['response'] == null
          ? null
          : Response.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'version': instance.version,
      'queryString': instance.queryString,
      'response': instance.response,
    };
