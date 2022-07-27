// To parse this JSON data, do
//
//     final bestSeller = bestSellerFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/src/material/ink_well.dart';

BestSeller bestSellerFromJson(String str) =>
    BestSeller.fromJson(json.decode(str));

String bestSellerToJson(BestSeller data) => json.encode(data.toJson());

class BestSeller {
  BestSeller({
    required this.version,
    required this.queryString,
    required this.response,
  });

  int version;
  QueryString queryString;
  ResponseData response;

  factory BestSeller.fromJson(Map<String, dynamic> json) => BestSeller(
        version: json["version"],
        queryString: QueryString.fromJson(json["queryString"]),
        response: ResponseData.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "version": version,
        "queryString": queryString.toJson(),
        "response": response.toJson(),
      };
}

class QueryString {
  QueryString({
    required this.limit,
  });

  String limit;

  factory QueryString.fromJson(Map<String, dynamic> json) => QueryString(
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "limit": limit,
      };
}

class ResponseData {
  ResponseData({
    required this.results,
    required this.total,
  });

  List<ResultData> results;
  int total;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
        results: List<ResultData>.from(
            json["results"].map((x) => ResultData.fromJson(x))),
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "total": total,
      };
}

class ResultData {
  ResultData({
    required this.productId,
    required this.name,
    required this.category,
    required this.location,
    required this.weight,
    required this.publishDate,
    required this.priceNormal,
    required this.price,
    required this.priceNormalRp,
    required this.priceRp,
    required this.gallery,
    required this.slug,
    required this.hit,
    required this.detailUrl,
  });

  int productId;
  String name;
  List<String> category;
  int location;
  int weight;
  DateTime publishDate;
  int priceNormal;
  int price;
  String priceNormalRp;
  String priceRp;
  List<Gallery> gallery;
  String slug;
  int hit;
  String detailUrl;

  factory ResultData.fromJson(Map<String, dynamic> json) => ResultData(
        productId: json["product_id"],
        name: json["name"],
        category: List<String>.from(json["category"].map((x) => x)),
        location: json["location"],
        weight: json["weight"],
        publishDate: DateTime.parse(json["publish_date"]),
        priceNormal: json["price_normal"],
        price: json["price"],
        priceNormalRp: json["price_normal_rp"],
        priceRp: json["price_rp"],
        gallery:
            List<Gallery>.from(json["gallery"].map((x) => Gallery.fromJson(x))),
        slug: json["slug"],
        hit: json["hit"],
        detailUrl: json["detailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "name": name,
        "category": List<dynamic>.from(category.map((x) => x)),
        "location": location,
        "weight": weight,
        "publish_date": publishDate.toIso8601String(),
        "price_normal": priceNormal,
        "price": price,
        "price_normal_rp": priceNormalRp,
        "price_rp": priceRp,
        "gallery": List<dynamic>.from(gallery.map((x) => x.toJson())),
        "slug": slug,
        "hit": hit,
        "detailUrl": detailUrl,
      };

  map(InkWell Function(dynamic item) param0) {}
}

class Gallery {
  Gallery({
    required this.urlOriginal,
    required this.url250X320,
    required this.url375X375,
    required this.url68X68,
    required this.url,
    required this.caption,
    required this.slug,
  });

  String urlOriginal;
  String url250X320;
  String url375X375;
  String url68X68;
  String url;
  String caption;
  String slug;

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
        urlOriginal: json["url_original"],
        url250X320: json["url_250x320"],
        url375X375: json["url_375x375"],
        url68X68: json["url_68x68"],
        url: json["url"],
        caption: json["caption"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "url_original": urlOriginal,
        "url_250x320": url250X320,
        "url_375x375": url375X375,
        "url_68x68": url68X68,
        "url": url,
        "caption": caption,
        "slug": slug,
      };
}
