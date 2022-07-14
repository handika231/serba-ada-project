// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      count: json['count'] as int?,
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      productId: json['product_id'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'count': instance.count,
      'page': instance.page,
      'limit': instance.limit,
      'product_id': instance.productId,
      'results': instance.results,
    };
