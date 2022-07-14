// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Top _$TopFromJson(Map<String, dynamic> json) => Top(
      count: json['count'] as int?,
      page: json['page'] as int?,
      limit: json['limit'] as String?,
      promoId: json['promo_id'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopToJson(Top instance) => <String, dynamic>{
      'count': instance.count,
      'page': instance.page,
      'limit': instance.limit,
      'promo_id': instance.promoId,
      'results': instance.results,
    };
