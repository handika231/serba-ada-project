import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'middle.g.dart';

@JsonSerializable()
class Middle extends Equatable {
	final int? count;
	final int? page;
	final String? limit;
	@JsonKey(name: 'promo_id') 
	final String? promoId;
	final List<dynamic>? results;

	const Middle({
		this.count, 
		this.page, 
		this.limit, 
		this.promoId, 
		this.results, 
	});

	factory Middle.fromJson(Map<String, dynamic> json) {
		return _$MiddleFromJson(json);
	}

	Map<String, dynamic> toJson() => _$MiddleToJson(this);

	Middle copyWith({
		int? count,
		int? page,
		String? limit,
		String? promoId,
		List<dynamic>? results,
	}) {
		return Middle(
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
