import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'query_string.g.dart';

@JsonSerializable()
class QueryString extends Equatable {
	final String? limit;

	const QueryString({this.limit});

	factory QueryString.fromJson(Map<String, dynamic> json) {
		return _$QueryStringFromJson(json);
	}

	Map<String, dynamic> toJson() => _$QueryStringToJson(this);

	QueryString copyWith({
		String? limit,
	}) {
		return QueryString(
			limit: limit ?? this.limit,
		);
	}

	@override
	List<Object?> get props => [limit];
}
