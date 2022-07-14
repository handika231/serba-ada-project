// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bottom _$BottomFromJson(Map<String, dynamic> json) => Bottom(
      count: json['count'] as int?,
      page: json['page'] as int?,
      limit: json['limit'] as String?,
      promoId: json['promo_id'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BottomToJson(Bottom instance) => <String, dynamic>{
      'count': instance.count,
      'page': instance.page,
      'limit': instance.limit,
      'promo_id': instance.promoId,
      'results': instance.results,
    };
