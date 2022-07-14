import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class Result extends Equatable {
	@JsonKey(name: 'promo_id') 
	final int? promoId;
	final String? name;
	final String? slug;
	final String? link;
	@JsonKey(name: 'category_path') 
	final List<String>? categoryPath;
	@JsonKey(name: 'category_path_id') 
	final List<String>? categoryPathId;
	final String? image;
	@JsonKey(name: 'image_desktop') 
	final String? imageDesktop;
	@JsonKey(name: 'image_mobile') 
	final String? imageMobile;
	@JsonKey(name: 'publish_date') 
	final String? publishDate;
	@JsonKey(name: 'create_date') 
	final String? createDate;
	@JsonKey(name: 'publish_timestamp') 
	final String? publishTimestamp;
	@JsonKey(name: 'author_id') 
	final int? authorId;
	final String? author;
	final String? position;
	@JsonKey(name: 'position_order') 
	final int? positionOrder;

	const Result({
		this.promoId, 
		this.name, 
		this.slug, 
		this.link, 
		this.categoryPath, 
		this.categoryPathId, 
		this.image, 
		this.imageDesktop, 
		this.imageMobile, 
		this.publishDate, 
		this.createDate, 
		this.publishTimestamp, 
		this.authorId, 
		this.author, 
		this.position, 
		this.positionOrder, 
	});

	factory Result.fromJson(Map<String, dynamic> json) {
		return _$ResultFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResultToJson(this);

	Result copyWith({
		int? promoId,
		String? name,
		String? slug,
		String? link,
		List<String>? categoryPath,
		List<String>? categoryPathId,
		String? image,
		String? imageDesktop,
		String? imageMobile,
		String? publishDate,
		String? createDate,
		String? publishTimestamp,
		int? authorId,
		String? author,
		String? position,
		int? positionOrder,
	}) {
		return Result(
			promoId: promoId ?? this.promoId,
			name: name ?? this.name,
			slug: slug ?? this.slug,
			link: link ?? this.link,
			categoryPath: categoryPath ?? this.categoryPath,
			categoryPathId: categoryPathId ?? this.categoryPathId,
			image: image ?? this.image,
			imageDesktop: imageDesktop ?? this.imageDesktop,
			imageMobile: imageMobile ?? this.imageMobile,
			publishDate: publishDate ?? this.publishDate,
			createDate: createDate ?? this.createDate,
			publishTimestamp: publishTimestamp ?? this.publishTimestamp,
			authorId: authorId ?? this.authorId,
			author: author ?? this.author,
			position: position ?? this.position,
			positionOrder: positionOrder ?? this.positionOrder,
		);
	}

	@override
	List<Object?> get props {
		return [
				promoId,
				name,
				slug,
				link,
				categoryPath,
				categoryPathId,
				image,
				imageDesktop,
				imageMobile,
				publishDate,
				createDate,
				publishTimestamp,
				authorId,
				author,
				position,
				positionOrder,
		];
	}
}
