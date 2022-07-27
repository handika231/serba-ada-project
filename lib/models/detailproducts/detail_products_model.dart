// To parse this JSON data, do
//
//     final detailsProducts = detailsProductsFromJson(jsonString);

import 'dart:convert';

DetailsProducts detailsProductsFromJson(String str) =>
    DetailsProducts.fromJson(json.decode(str));

String detailsProductsToJson(DetailsProducts data) =>
    json.encode(data.toJson());

class DetailsProducts {
  DetailsProducts({
    required this.version,
    required this.queryString,
    required this.response,
  });

  int version;
  QueryString queryString;
  List<ResponseData> response;

  factory DetailsProducts.fromJson(Map<String, dynamic> json) =>
      DetailsProducts(
        version: json["version"],
        queryString: QueryString.fromJson(json["queryString"]),
        response: List<ResponseData>.from(
            json["response"].map((x) => ResponseData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "version": version,
        "queryString": queryString.toJson(),
        "response": List<dynamic>.from(response.map((x) => x.toJson())),
      };
}

class QueryString {
  QueryString({
    required this.slug,
    required this.productId,
  });

  String slug;
  String productId;

  factory QueryString.fromJson(Map<String, dynamic> json) => QueryString(
        slug: json["slug"],
        productId: json["product_id"],
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "product_id": productId,
      };
}

class ResponseData {
  ResponseData({
    required this.productId,
    required this.name,
    required this.summary,
    required this.slug,
    required this.description,
    required this.categoryPath,
    required this.categoryPathId,
    required this.priceNormal,
    required this.price,
    required this.location,
    required this.weight,
    required this.priceNormalRp,
    required this.priceRp,
    required this.diskon,
    required this.options,
    required this.rating,
    required this.gallery,
    required this.publishDate,
    required this.createDate,
    required this.publishTimestamp,
    required this.authorId,
    required this.author,
    required this.brandId,
    required this.brand,
    required this.tags,
    required this.inStock,
    required this.supplier,
    required this.videos,
    required this.marketplace,
    required this.productRelated,
    required this.detailUrl,
  });

  int productId;
  String name;
  String summary;
  String slug;
  List<String> description;
  List<String> categoryPath;
  List<String> categoryPathId;
  int priceNormal;
  int price;
  int location;
  int weight;
  String priceNormalRp;
  String priceRp;
  int diskon;
  List<dynamic> options;
  int rating;
  List<Gallery> gallery;
  String publishDate;
  DateTime createDate;
  String publishTimestamp;
  int authorId;
  String author;
  int brandId;
  String brand;
  List<Tag> tags;
  int inStock;
  Supplier supplier;
  List<dynamic> videos;
  List<Marketplace> marketplace;
  ProductRelated productRelated;
  String detailUrl;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
        productId: json["product_id"],
        name: json["name"],
        summary: json["summary"],
        slug: json["slug"],
        description: List<String>.from(json["description"].map((x) => x)),
        categoryPath: List<String>.from(json["category_path"].map((x) => x)),
        categoryPathId:
            List<String>.from(json["category_path_id"].map((x) => x)),
        priceNormal: json["price_normal"],
        price: json["price"],
        location: json["location"],
        weight: json["weight"],
        priceNormalRp: json["price_normal_rp"],
        priceRp: json["price_rp"],
        diskon: json["diskon"],
        options: List<dynamic>.from(json["options"].map((x) => x)),
        rating: json["rating"],
        gallery:
            List<Gallery>.from(json["gallery"].map((x) => Gallery.fromJson(x))),
        publishDate: json["publish_date"],
        createDate: DateTime.parse(json["create_date"]),
        publishTimestamp: json["publish_timestamp"],
        authorId: json["author_id"],
        author: json["author"],
        brandId: json["brand_id"],
        brand: json["brand"],
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        inStock: json["in_stock"],
        supplier: Supplier.fromJson(json["supplier"]),
        videos: List<dynamic>.from(json["videos"].map((x) => x)),
        marketplace: List<Marketplace>.from(
            json["marketplace"].map((x) => Marketplace.fromJson(x))),
        productRelated: ProductRelated.fromJson(json["product_related"]),
        detailUrl: json["detailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "name": name,
        "summary": summary,
        "slug": slug,
        "description": List<dynamic>.from(description.map((x) => x)),
        "category_path": List<dynamic>.from(categoryPath.map((x) => x)),
        "category_path_id": List<dynamic>.from(categoryPathId.map((x) => x)),
        "price_normal": priceNormal,
        "price": price,
        "location": location,
        "weight": weight,
        "price_normal_rp": priceNormalRp,
        "price_rp": priceRp,
        "diskon": diskon,
        "options": List<dynamic>.from(options.map((x) => x)),
        "rating": rating,
        "gallery": List<dynamic>.from(gallery.map((x) => x.toJson())),
        "publish_date": publishDate,
        "create_date": createDate.toIso8601String(),
        "publish_timestamp": publishTimestamp,
        "author_id": authorId,
        "author": author,
        "brand_id": brandId,
        "brand": brand,
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "in_stock": inStock,
        "supplier": supplier.toJson(),
        "videos": List<dynamic>.from(videos.map((x) => x)),
        "marketplace": List<dynamic>.from(marketplace.map((x) => x.toJson())),
        "product_related": productRelated.toJson(),
        "detailUrl": detailUrl,
      };
}

class Gallery {
  Gallery({
    required this.urlOriginals,
    required this.urlOriginal,
    required this.url250X320,
    required this.url375X375,
    required this.url68X68,
    required this.caption,
    required this.slug,
  });

  String urlOriginals;
  String urlOriginal;
  String url250X320;
  String url375X375;
  String url68X68;
  String caption;
  String slug;

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
        urlOriginals: json["url_originals"],
        urlOriginal: json["url_original"],
        url250X320: json["url_250x320"],
        url375X375: json["url_375x375"],
        url68X68: json["url_68x68"],
        caption: json["caption"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "url_originals": urlOriginals,
        "url_original": urlOriginal,
        "url_250x320": url250X320,
        "url_375x375": url375X375,
        "url_68x68": url68X68,
        "caption": caption,
        "slug": slug,
      };
}

class Marketplace {
  Marketplace({
    required this.link,
    required this.name,
  });

  String link;
  String name;

  factory Marketplace.fromJson(Map<String, dynamic> json) => Marketplace(
        link: json["link"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "link": link,
        "name": name,
      };
}

class ProductRelated {
  ProductRelated({
    required this.count,
    required this.productId,
    required this.results,
  });

  int count;
  String productId;
  List<Result> results;

  factory ProductRelated.fromJson(Map<String, dynamic> json) => ProductRelated(
        count: json["count"],
        productId: json["product_id"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "product_id": productId,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    required this.productId,
    required this.name,
    required this.slug,
    required this.priceNormal,
    required this.price,
    required this.location,
    required this.weight,
    required this.priceNormalRp,
    required this.priceRp,
    required this.rating,
    required this.gallery,
    required this.publishDate,
    required this.createDate,
    required this.inStock,
    required this.supplier,
  });

  int productId;
  String name;
  String slug;
  int priceNormal;
  int price;
  int location;
  int weight;
  String priceNormalRp;
  String priceRp;
  int rating;
  List<Gallery> gallery;
  String publishDate;
  DateTime createDate;
  int inStock;
  Supplier supplier;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        productId: json["product_id"],
        name: json["name"],
        slug: json["slug"],
        priceNormal: json["price_normal"],
        price: json["price"],
        location: json["location"],
        weight: json["weight"],
        priceNormalRp: json["price_normal_rp"],
        priceRp: json["price_rp"],
        rating: json["rating"],
        gallery:
            List<Gallery>.from(json["gallery"].map((x) => Gallery.fromJson(x))),
        publishDate: json["publish_date"],
        createDate: DateTime.parse(json["create_date"]),
        inStock: json["in_stock"],
        supplier: Supplier.fromJson(json["supplier"]),
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "name": name,
        "slug": slug,
        "price_normal": priceNormal,
        "price": price,
        "location": location,
        "weight": weight,
        "price_normal_rp": priceNormalRp,
        "price_rp": priceRp,
        "rating": rating,
        "gallery": List<dynamic>.from(gallery.map((x) => x.toJson())),
        "publish_date": publishDate,
        "create_date": createDate.toIso8601String(),
        "in_stock": inStock,
        "supplier": supplier.toJson(),
      };
}

class Supplier {
  Supplier({
    required this.locationName,
    required this.name,
    required this.supplierId,
    required this.locationId,
  });

  LocationName? locationName;
  Name? name;
  int supplierId;
  int locationId;

  factory Supplier.fromJson(Map<String, dynamic> json) => Supplier(
        locationName: locationNameValues.map[json["location_name"]],
        name: nameValues.map[json["name"]],
        supplierId: json["supplier_id"],
        locationId: json["location_id"],
      );

  Map<String, dynamic> toJson() => {
        "location_name": locationNameValues.reverse![locationName],
        "name": nameValues.reverse![name],
        "supplier_id": supplierId,
        "location_id": locationId,
      };
}

enum LocationName { JAKARTA_SELATAN }

final locationNameValues =
    EnumValues({"Jakarta Selatan": LocationName.JAKARTA_SELATAN});

enum Name { SERBADA_JAKARTA }

final nameValues = EnumValues({"Serbada Jakarta": Name.SERBADA_JAKARTA});

class Tag {
  Tag({
    required this.name,
    required this.slug,
  });

  String name;
  String slug;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        name: json["name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "slug": slug,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
