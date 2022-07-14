import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'response.g.dart';

@JsonSerializable()
class Response extends Equatable {
	final int? count;
	final int? page;
	final int? limit;
	@JsonKey(name: 'product_id') 
	final String? productId;
	final List<Result>? results;

	const Response({
		this.count, 
		this.page, 
		this.limit, 
		this.productId, 
		this.results, 
	});

	factory Response.fromJson(Map<String, dynamic> json) {
		return _$ResponseFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResponseToJson(this);

	Response copyWith({
		int? count,
		int? page,
		int? limit,
		String? productId,
		List<Result>? results,
	}) {
		return Response(
			count: count ?? this.count,
			page: page ?? this.page,
			limit: limit ?? this.limit,
			productId: productId ?? this.productId,
			results: results ?? this.results,
		);
	}

	@override
	List<Object?> get props => [count, page, limit, productId, results];
}
