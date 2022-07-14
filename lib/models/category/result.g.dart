// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      categoryId: json['category_id'] as int?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      positionOrder: json['position_order'] as int?,
      categoryPath: (json['category_path'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryPathId: json['category_path_id'] as List<dynamic>?,
      icon: json['icon'] as String?,
      subCategories: (json['sub_categories'] as List<dynamic>?)
          ?.map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'category_id': instance.categoryId,
      'title': instance.title,
      'slug': instance.slug,
      'position_order': instance.positionOrder,
      'category_path': instance.categoryPath,
      'category_path_id': instance.categoryPathId,
      'icon': instance.icon,
      'sub_categories': instance.subCategories,
    };
