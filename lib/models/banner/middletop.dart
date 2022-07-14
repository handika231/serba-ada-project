import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'middletop.g.dart';

@JsonSerializable()
class Middletop extends Equatable {
	final int? count;
	final int? page;
	final String? limit;
	@JsonKey(name: 'promo_id') 
	final String? promoId;
	final List<Result>? results;

	const Middletop({
		this.count, 
		this.page, 
		this.limit, 
		this.promoId, 
		this.results, 
	});

	factory Middletop.fromJson(Map<String, dynamic> json) {
		return _$MiddletopFromJson(json);
	}

	Map<String, dynamic> toJson() => _$MiddletopToJson(this);

	Middletop copyWith({
		int? count,
		int? page,
		String? limit,
		String? promoId,
		List<Result>? results,
	}) {
		return Middletop(
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
