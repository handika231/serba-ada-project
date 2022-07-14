import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'gallery.dart';
import 'supplier.dart';
import 'tag.dart';

part 'result.g.dart';

@JsonSerializable()
class Result extends Equatable {
	@JsonKey(name: 'product_id') 
	final int? productId;
	final String? name;
	final String? summary;
	final String? slug;
	@JsonKey(name: 'category_path') 
	final List<String>? categoryPath;
	@JsonKey(name: 'category_path_id') 
	final List<String>? categoryPathId;
	@JsonKey(name: 'price_normal') 
	final int? priceNormal;
	final int? price;
	final int? location;
	final int? weight;
	@JsonKey(name: 'price_normal_rp') 
	final String? priceNormalRp;
	@JsonKey(name: 'price_rp') 
	final String? priceRp;
	final int? diskon;
	final List<dynamic>? options;
	final int? rating;
	final List<Gallery>? gallery;
	@JsonKey(name: 'publish_date') 
	final String? publishDate;
	@JsonKey(name: 'create_date') 
	final String? createDate;
	@JsonKey(name: 'publish_timestamp') 
	final String? publishTimestamp;
	@JsonKey(name: 'author_id') 
	final int? authorId;
	final String? author;
	final List<Tag>? tags;
	@JsonKey(name: 'in_stock') 
	final int? inStock;
	final Supplier? supplier;
	@JsonKey(name: 'is_recomended') 
	final int? isRecomended;
	final String? detailUrl;

	const Result({
		this.productId, 
		this.name, 
		this.summary, 
		this.slug, 
		this.categoryPath, 
		this.categoryPathId, 
		this.priceNormal, 
		this.price, 
		this.location, 
		this.weight, 
		this.priceNormalRp, 
		this.priceRp, 
		this.diskon, 
		this.options, 
		this.rating, 
		this.gallery, 
		this.publishDate, 
		this.createDate, 
		this.publishTimestamp, 
		this.authorId, 
		this.author, 
		this.tags, 
		this.inStock, 
		this.supplier, 
		this.isRecomended, 
		this.detailUrl, 
	});

	factory Result.fromJson(Map<String, dynamic> json) {
		return _$ResultFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResultToJson(this);

	Result copyWith({
		int? productId,
		String? name,
		String? summary,
		String? slug,
		List<String>? categoryPath,
		List<String>? categoryPathId,
		int? priceNormal,
		int? price,
		int? location,
		int? weight,
		String? priceNormalRp,
		String? priceRp,
		int? diskon,
		List<dynamic>? options,
		int? rating,
		List<Gallery>? gallery,
		String? publishDate,
		String? createDate,
		String? publishTimestamp,
		int? authorId,
		String? author,
		List<Tag>? tags,
		int? inStock,
		Supplier? supplier,
		int? isRecomended,
		String? detailUrl,
	}) {
		return Result(
			productId: productId ?? this.productId,
			name: name ?? this.name,
			summary: summary ?? this.summary,
			slug: slug ?? this.slug,
			categoryPath: categoryPath ?? this.categoryPath,
			categoryPathId: categoryPathId ?? this.categoryPathId,
			priceNormal: priceNormal ?? this.priceNormal,
			price: price ?? this.price,
			location: location ?? this.location,
			weight: weight ?? this.weight,
			priceNormalRp: priceNormalRp ?? this.priceNormalRp,
			priceRp: priceRp ?? this.priceRp,
			diskon: diskon ?? this.diskon,
			options: options ?? this.options,
			rating: rating ?? this.rating,
			gallery: gallery ?? this.gallery,
			publishDate: publishDate ?? this.publishDate,
			createDate: createDate ?? this.createDate,
			publishTimestamp: publishTimestamp ?? this.publishTimestamp,
			authorId: authorId ?? this.authorId,
			author: author ?? this.author,
			tags: tags ?? this.tags,
			inStock: inStock ?? this.inStock,
			supplier: supplier ?? this.supplier,
			isRecomended: isRecomended ?? this.isRecomended,
			detailUrl: detailUrl ?? this.detailUrl,
		);
	}

	@override
	List<Object?> get props {
		return [
				productId,
				name,
				summary,
				slug,
				categoryPath,
				categoryPathId,
				priceNormal,
				price,
				location,
				weight,
				priceNormalRp,
				priceRp,
				diskon,
				options,
				rating,
				gallery,
				publishDate,
				createDate,
				publishTimestamp,
				authorId,
				author,
				tags,
				inStock,
				supplier,
				isRecomended,
				detailUrl,
		];
	}
}
