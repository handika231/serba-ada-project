import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'sub_category.dart';

part 'result.g.dart';

@JsonSerializable()
class Result extends Equatable {
	@JsonKey(name: 'category_id') 
	final int? categoryId;
	final String? title;
	final String? slug;
	@JsonKey(name: 'position_order') 
	final int? positionOrder;
	@JsonKey(name: 'category_path') 
	final List<String>? categoryPath;
	@JsonKey(name: 'category_path_id') 
	final List<dynamic>? categoryPathId;
	final String? icon;
	@JsonKey(name: 'sub_categories') 
	final List<SubCategory>? subCategories;

	const Result({
		this.categoryId, 
		this.title, 
		this.slug, 
		this.positionOrder, 
		this.categoryPath, 
		this.categoryPathId, 
		this.icon, 
		this.subCategories, 
	});

	factory Result.fromJson(Map<String, dynamic> json) {
		return _$ResultFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResultToJson(this);

	Result copyWith({
		int? categoryId,
		String? title,
		String? slug,
		int? positionOrder,
		List<String>? categoryPath,
		List<dynamic>? categoryPathId,
		String? icon,
		List<SubCategory>? subCategories,
	}) {
		return Result(
			categoryId: categoryId ?? this.categoryId,
			title: title ?? this.title,
			slug: slug ?? this.slug,
			positionOrder: positionOrder ?? this.positionOrder,
			categoryPath: categoryPath ?? this.categoryPath,
			categoryPathId: categoryPathId ?? this.categoryPathId,
			icon: icon ?? this.icon,
			subCategories: subCategories ?? this.subCategories,
		);
	}

	@override
	List<Object?> get props {
		return [
				categoryId,
				title,
				slug,
				positionOrder,
				categoryPath,
				categoryPathId,
				icon,
				subCategories,
		];
	}
}
