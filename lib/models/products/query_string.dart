import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'query_string.g.dart';

@JsonSerializable()
class QueryString extends Equatable {
	final String? category;
	final String? limit;
	final String? page;
	final String? brand;
	@JsonKey(name: 'exclude_id') 
	final String? excludeId;
	final String? pricesort;

	const QueryString({
		this.category, 
		this.limit, 
		this.page, 
		this.brand, 
		this.excludeId, 
		this.pricesort, 
	});

	factory QueryString.fromJson(Map<String, dynamic> json) {
		return _$QueryStringFromJson(json);
	}

	Map<String, dynamic> toJson() => _$QueryStringToJson(this);

	QueryString copyWith({
		String? category,
		String? limit,
		String? page,
		String? brand,
		String? excludeId,
		String? pricesort,
	}) {
		return QueryString(
			category: category ?? this.category,
			limit: limit ?? this.limit,
			page: page ?? this.page,
			brand: brand ?? this.brand,
			excludeId: excludeId ?? this.excludeId,
			pricesort: pricesort ?? this.pricesort,
		);
	}

	@override
	List<Object?> get props {
		return [
				category,
				limit,
				page,
				brand,
				excludeId,
				pricesort,
		];
	}
}
