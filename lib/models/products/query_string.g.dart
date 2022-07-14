// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_string.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryString _$QueryStringFromJson(Map<String, dynamic> json) => QueryString(
      category: json['category'] as String?,
      limit: json['limit'] as String?,
      page: json['page'] as String?,
      brand: json['brand'] as String?,
      excludeId: json['exclude_id'] as String?,
      pricesort: json['pricesort'] as String?,
    );

Map<String, dynamic> _$QueryStringToJson(QueryString instance) =>
    <String, dynamic>{
      'category': instance.category,
      'limit': instance.limit,
      'page': instance.page,
      'brand': instance.brand,
      'exclude_id': instance.excludeId,
      'pricesort': instance.pricesort,
    };
