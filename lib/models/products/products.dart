import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'query_string.dart';
import 'response.dart';

part 'products.g.dart';

@JsonSerializable()
class Products extends Equatable {
  final int? version;
  final QueryString? queryString;
  final Response? response;

  const Products({this.version, this.queryString, this.response});

  factory Products.fromJson(Map<String, dynamic> json) {
    return _$ProductsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductsToJson(this);

  Products copyWith({
    int? version,
    QueryString? queryString,
    Response? response,
  }) {
    return Products(
      version: version ?? this.version,
      queryString: queryString ?? this.queryString,
      response: response ?? this.response,
    );
  }

  @override
  List<Object?> get props => [version, queryString, response];
}
