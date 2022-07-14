// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) => SubCategory(
      id: json['id'] as int?,
      pid: json['pid'] as int?,
      path: json['path'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      displayOrder: json['display_order'] as int?,
      categoryPath: (json['category_path'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryPathId: (json['category_path_id'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subCategories: json['sub_categories'] as List<dynamic>?,
    );

Map<String, dynamic> _$SubCategoryToJson(SubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pid': instance.pid,
      'path': instance.path,
      'title': instance.title,
      'slug': instance.slug,
      'display_order': instance.displayOrder,
      'category_path': instance.categoryPath,
      'category_path_id': instance.categoryPathId,
      'sub_categories': instance.subCategories,
    };
