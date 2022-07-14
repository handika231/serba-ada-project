import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'top.g.dart';

@JsonSerializable()
class Top extends Equatable {
	final int? count;
	final int? page;
	final String? limit;
	@JsonKey(name: 'promo_id') 
	final String? promoId;
	final List<Result>? results;

	const Top({
		this.count, 
		this.page, 
		this.limit, 
		this.promoId, 
		this.results, 
	});

	factory Top.fromJson(Map<String, dynamic> json) => _$TopFromJson(json);

	Map<String, dynamic> toJson() => _$TopToJson(this);

	Top copyWith({
		int? count,
		int? page,
		String? limit,
		String? promoId,
		List<Result>? results,
	}) {
		return Top(
			count: count ?? this.count,
			page: page ?? this.page,
			limit: limit ?? this.limit,
			promoId: promoId ?? this.promoId,
			results: results ?? this.results,
		);
	}

	@override
	List<Object?> get props => [count, page, limit, promoId, results];
}
