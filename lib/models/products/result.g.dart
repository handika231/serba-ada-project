// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      productId: json['product_id'] as int?,
      name: json['name'] as String?,
      summary: json['summary'] as String?,
      slug: json['slug'] as String?,
      categoryPath: (json['category_path'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryPathId: (json['category_path_id'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      priceNormal: json['price_normal'] as int?,
      price: json['price'] as int?,
      location: json['location'] as int?,
      weight: json['weight'] as int?,
      priceNormalRp: json['price_normal_rp'] as String?,
      priceRp: json['price_rp'] as String?,
      diskon: json['diskon'] as int?,
      options: json['options'] as List<dynamic>?,
      rating: json['rating'] as int?,
      gallery: (json['gallery'] as List<dynamic>?)
          ?.map((e) => Gallery.fromJson(e as Map<String, dynamic>))
          .toList(),
      publishDate: json['publish_date'] as String?,
      createDate: json['create_date'] as String?,
      publishTimestamp: json['publish_timestamp'] as String?,
      authorId: json['author_id'] as int?,
      author: json['author'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      inStock: json['in_stock'] as int?,
      supplier: json['supplier'] == null
          ? null
          : Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
      isRecomended: json['is_recomended'] as int?,
      detailUrl: json['detailUrl'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'summary': instance.summary,
      'slug': instance.slug,
      'category_path': instance.categoryPath,
      'category_path_id': instance.categoryPathId,
      'price_normal': instance.priceNormal,
      'price': instance.price,
      'location': instance.location,
      'weight': instance.weight,
      'price_normal_rp': instance.priceNormalRp,
      'price_rp': instance.priceRp,
      'diskon': instance.diskon,
      'options': instance.options,
      'rating': instance.rating,
      'gallery': instance.gallery,
      'publish_date': instance.publishDate,
      'create_date': instance.createDate,
      'publish_timestamp': instance.publishTimestamp,
      'author_id': instance.authorId,
      'author': instance.author,
      'tags': instance.tags,
      'in_stock': instance.inStock,
      'supplier': instance.supplier,
      'is_recomended': instance.isRecomended,
      'detailUrl': instance.detailUrl,
    };
