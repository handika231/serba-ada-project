// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      promoId: json['promo_id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      link: json['link'] as String?,
      categoryPath: (json['category_path'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryPathId: (json['category_path_id'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      image: json['image'] as String?,
      imageDesktop: json['image_desktop'] as String?,
      imageMobile: json['image_mobile'] as String?,
      publishDate: json['publish_date'] as String?,
      createDate: json['create_date'] as String?,
      publishTimestamp: json['publish_timestamp'] as String?,
      authorId: json['author_id'] as int?,
      author: json['author'] as String?,
      position: json['position'] as String?,
      positionOrder: json['position_order'] as int?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'promo_id': instance.promoId,
      'name': instance.name,
      'slug': instance.slug,
      'link': instance.link,
      'category_path': instance.categoryPath,
      'category_path_id': instance.categoryPathId,
      'image': instance.image,
      'image_desktop': instance.imageDesktop,
      'image_mobile': instance.imageMobile,
      'publish_date': instance.publishDate,
      'create_date': instance.createDate,
      'publish_timestamp': instance.publishTimestamp,
      'author_id': instance.authorId,
      'author': instance.author,
      'position': instance.position,
      'position_order': instance.positionOrder,
    };
