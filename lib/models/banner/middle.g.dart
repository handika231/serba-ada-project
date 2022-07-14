// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'middle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Middle _$MiddleFromJson(Map<String, dynamic> json) => Middle(
      count: json['count'] as int?,
      page: json['page'] as int?,
      limit: json['limit'] as String?,
      promoId: json['promo_id'] as String?,
      results: json['results'] as List<dynamic>?,
    );

Map<String, dynamic> _$MiddleToJson(Middle instance) => <String, dynamic>{
      'count': instance.count,
      'page': instance.page,
      'limit': instance.limit,
      'promo_id': instance.promoId,
      'results': instance.results,
    };
