import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_category.g.dart';

@JsonSerializable()
class SubCategory extends Equatable {
	final int? id;
	final int? pid;
	final String? path;
	final String? title;
	final String? slug;
	@JsonKey(name: 'display_order') 
	final int? displayOrder;
	@JsonKey(name: 'category_path') 
	final List<String>? categoryPath;
	@JsonKey(name: 'category_path_id') 
	final List<String>? categoryPathId;
	@JsonKey(name: 'sub_categories') 
	final List<dynamic>? subCategories;

	const SubCategory({
		this.id, 
		this.pid, 
		this.path, 
		this.title, 
		this.slug, 
		this.displayOrder, 
		this.categoryPath, 
		this.categoryPathId, 
		this.subCategories, 
	});

	factory SubCategory.fromJson(Map<String, dynamic> json) {
		return _$SubCategoryFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SubCategoryToJson(this);

	SubCategory copyWith({
		int? id,
		int? pid,
		String? path,
		String? title,
		String? slug,
		int? displayOrder,
		List<String>? categoryPath,
		List<String>? categoryPathId,
		List<dynamic>? subCategories,
	}) {
		return SubCategory(
			id: id ?? this.id,
			pid: pid ?? this.pid,
			path: path ?? this.path,
			title: title ?? this.title,
			slug: slug ?? this.slug,
			displayOrder: displayOrder ?? this.displayOrder,
			categoryPath: categoryPath ?? this.categoryPath,
			categoryPathId: categoryPathId ?? this.categoryPathId,
			subCategories: subCategories ?? this.subCategories,
		);
	}

	@override
	List<Object?> get props {
		return [
				id,
				pid,
				path,
				title,
				slug,
				displayOrder,
				categoryPath,
				categoryPathId,
				subCategories,
		];
	}
}
