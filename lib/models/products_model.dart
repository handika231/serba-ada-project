import 'package:flutter/src/material/ink_well.dart';

class ProductsModel {
  int? version;
  QueryString? queryString;
  Response? response;

  ProductsModel({this.version, this.queryString, this.response});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    queryString = json['queryString'] != null
        ? QueryString.fromJson(json['queryString'])
        : null;
    response =
        json['response'] != null ? Response.fromJson(json['response']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['version'] = version;
    if (queryString != null) {
      data['queryString'] = queryString!.toJson();
    }
    if (response != null) {
      data['response'] = response!.toJson();
    }
    return data;
  }
}

class QueryString {
  String? category;
  String? limit;
  String? page;
  String? brand;
  String? excludeId;
  String? pricesort;

  QueryString(
      {this.category,
      this.limit,
      this.page,
      this.brand,
      this.excludeId,
      this.pricesort});

  QueryString.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    limit = json['limit'];
    page = json['page'];
    brand = json['brand'];
    excludeId = json['exclude_id'];
    pricesort = json['pricesort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category'] = category;
    data['limit'] = limit;
    data['page'] = page;
    data['brand'] = brand;
    data['exclude_id'] = excludeId;
    data['pricesort'] = pricesort;
    return data;
  }
}

class Response {
  int? count;
  int? page;
  int? limit;
  String? productId;
  List<Results>? results;

  Response({this.count, this.page, this.limit, this.productId, this.results});

  Response.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    page = json['page'];
    limit = json['limit'];
    productId = json['product_id'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['page'] = page;
    data['limit'] = limit;
    data['product_id'] = productId;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? productId;
  String? name;
  String? summary;
  String? slug;
  List<String>? categoryPath;
  List<String>? categoryPathId;
  int? priceNormal;
  int? price;
  int? location;
  int? weight;
  String? priceNormalRp;
  String? priceRp;
  int? diskon;
  List<void>? options;
  int? rating;
  List<Gallery>? gallery;
  String? publishDate;
  String? createDate;
  String? publishTimestamp;
  int? authorId;
  String? author;
  List<Tags>? tags;
  int? inStock;
  Supplier? supplier;
  int? isRecomended;
  String? detailUrl;

  Results(
      {this.productId,
      this.name,
      this.summary,
      this.slug,
      this.categoryPath,
      this.categoryPathId,
      this.priceNormal,
      this.price,
      this.location,
      this.weight,
      this.priceNormalRp,
      this.priceRp,
      this.diskon,
      this.options,
      this.rating,
      this.gallery,
      this.publishDate,
      this.createDate,
      this.publishTimestamp,
      this.authorId,
      this.author,
      this.tags,
      this.inStock,
      this.supplier,
      this.isRecomended,
      this.detailUrl});

  Results.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    name = json['name'];
    summary = json['summary'];
    slug = json['slug'];
    categoryPath = json['category_path'].cast<String>();
    categoryPathId = json['category_path_id'].cast<String>();
    priceNormal = json['price_normal'];
    price = json['price'];
    location = json['location'];
    weight = json['weight'];
    priceNormalRp = json['price_normal_rp'];
    priceRp = json['price_rp'];
    diskon = json['diskon'];

    rating = json['rating'];
    if (json['gallery'] != null) {
      gallery = <Gallery>[];
      json['gallery'].forEach((v) {
        gallery!.add(Gallery.fromJson(v));
      });
    }
    publishDate = json['publish_date'];
    createDate = json['create_date'];
    publishTimestamp = json['publish_timestamp'];
    authorId = json['author_id'];
    author = json['author'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
    inStock = json['in_stock'];
    supplier =
        json['supplier'] != null ? Supplier.fromJson(json['supplier']) : null;
    isRecomended = json['is_recomended'];
    detailUrl = json['detailUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_id'] = productId;
    data['name'] = name;
    data['summary'] = summary;
    data['slug'] = slug;
    data['category_path'] = categoryPath;
    data['category_path_id'] = categoryPathId;
    data['price_normal'] = priceNormal;
    data['price'] = price;
    data['location'] = location;
    data['weight'] = weight;
    data['price_normal_rp'] = priceNormalRp;
    data['price_rp'] = priceRp;
    data['diskon'] = diskon;

    data['rating'] = rating;
    if (gallery != null) {
      data['gallery'] = gallery!.map((v) => v.toJson()).toList();
    }
    data['publish_date'] = publishDate;
    data['create_date'] = createDate;
    data['publish_timestamp'] = publishTimestamp;
    data['author_id'] = authorId;
    data['author'] = author;
    if (tags != null) {
      data['tags'] = tags!.map((v) => v.toJson()).toList();
    }
    data['in_stock'] = inStock;
    if (supplier != null) {
      data['supplier'] = supplier!.toJson();
    }
    data['is_recomended'] = isRecomended;
    data['detailUrl'] = detailUrl;
    return data;
  }

  map(InkWell Function(dynamic item) param0) {}
}

class Gallery {
  String? urlOriginals;
  String? urlOriginal;
  String? url250x320;
  String? url375x375;
  String? url68x68;
  String? caption;
  String? slug;

  Gallery(
      {this.urlOriginals,
      this.urlOriginal,
      this.url250x320,
      this.url375x375,
      this.url68x68,
      this.caption,
      this.slug});

  Gallery.fromJson(Map<String, dynamic> json) {
    urlOriginals = json['url_originals'];
    urlOriginal = json['url_original'];
    url250x320 = json['url_250x320'];
    url375x375 = json['url_375x375'];
    url68x68 = json['url_68x68'];
    caption = json['caption'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url_originals'] = urlOriginals;
    data['url_original'] = urlOriginal;
    data['url_250x320'] = url250x320;
    data['url_375x375'] = url375x375;
    data['url_68x68'] = url68x68;
    data['caption'] = caption;
    data['slug'] = slug;
    return data;
  }
}

class Tags {
  String? name;
  String? slug;

  Tags({this.name, this.slug});

  Tags.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['slug'] = slug;
    return data;
  }
}

class Supplier {
  String? locationName;
  String? name;
  int? supplierId;
  int? locationId;

  Supplier({this.locationName, this.name, this.supplierId, this.locationId});

  Supplier.fromJson(Map<String, dynamic> json) {
    locationName = json['location_name'];
    name = json['name'];
    supplierId = json['supplier_id'];
    locationId = json['location_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['location_name'] = locationName;
    data['name'] = name;
    data['supplier_id'] = supplierId;
    data['location_id'] = locationId;
    return data;
  }
}
