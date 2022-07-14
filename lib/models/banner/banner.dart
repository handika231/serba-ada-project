import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'query_string.dart';
import 'response.dart';

part 'banner.g.dart';

@JsonSerializable()
class Banner extends Equatable {
	final int? version;
	final QueryString? queryString;
	final Response? response;

	const Banner({this.version, this.queryString, this.response});

	factory Banner.fromJson(Map<String, dynamic> json) {
		return _$BannerFromJson(json);
	}

	Map<String, dynamic> toJson() => _$BannerToJson(this);

	Banner copyWith({
		int? version,
		QueryString? queryString,
		Response? response,
	}) {
		return Banner(
			version: version ?? this.version,
			queryString: queryString ?? this.queryString,
			response: response ?? this.response,
		);
	}

	@override
	List<Object?> get props => [version, queryString, response];
}
