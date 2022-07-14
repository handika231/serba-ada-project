import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'response.g.dart';

@JsonSerializable()
class Response extends Equatable {
	final int? count;
	final List<Result>? results;

	const Response({this.count, this.results});

	factory Response.fromJson(Map<String, dynamic> json) {
		return _$ResponseFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResponseToJson(this);

	Response copyWith({
		int? count,
		List<Result>? results,
	}) {
		return Response(
			count: count ?? this.count,
			results: results ?? this.results,
		);
	}

	@override
	List<Object?> get props => [count, results];
}
