import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'bottom.dart';
import 'middle.dart';
import 'middletop.dart';
import 'top.dart';

part 'response.g.dart';

@JsonSerializable()
class Response extends Equatable {
	final Top? top;
	final Middletop? middletop;
	final Middle? middle;
	final Bottom? bottom;

	const Response({this.top, this.middletop, this.middle, this.bottom});

	factory Response.fromJson(Map<String, dynamic> json) {
		return _$ResponseFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResponseToJson(this);

	Response copyWith({
		Top? top,
		Middletop? middletop,
		Middle? middle,
		Bottom? bottom,
	}) {
		return Response(
			top: top ?? this.top,
			middletop: middletop ?? this.middletop,
			middle: middle ?? this.middle,
			bottom: bottom ?? this.bottom,
		);
	}

	@override
	List<Object?> get props => [top, middletop, middle, bottom];
}
