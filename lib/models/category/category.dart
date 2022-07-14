import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'response.dart';

part 'category.g.dart';

@JsonSerializable()
class Category extends Equatable {
	final int? version;
	final List<dynamic>? queryString;
	final Response? response;

	const Category({this.version, this.queryString, this.response});

	factory Category.fromJson(Map<String, dynamic> json) {
		return _$CategoryFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CategoryToJson(this);

	Category copyWith({
		int? version,
		List<dynamic>? queryString,
		Response? response,
	}) {
		return Category(
			version: version ?? this.version,
			queryString: queryString ?? this.queryString,
			response: response ?? this.response,
		);
	}

	@override
	List<Object?> get props => [version, queryString, response];
}
