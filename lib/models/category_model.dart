import 'dart:convert';

CategoryModel categoryModelFromJson(String str) =>
    CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  CategoryModel({
    required this.version,
    required this.queryString,
    required this.response,
  });

  int version;
  List<dynamic> queryString;
  CategoryModelData response;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        version: json["version"],
        queryString: List<dynamic>.from(json["queryString"].map((x) => x)),
        response: CategoryModelData.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "version": version,
        "queryString": List<dynamic>.from(queryString.map((x) => x)),
        "response": response.toJson(),
      };
}

class CategoryModelData {
  CategoryModelData({
    required this.count,
    required this.results,
  });

  int count;
  List<Result> results;

  factory CategoryModelData.fromJson(Map<String, dynamic> json) =>
      CategoryModelData(
        count: json["count"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    required this.categoryId,
    required this.title,
    required this.slug,
    required this.positionOrder,
    required this.categoryPath,
    required this.categoryPathId,
    required this.icon,
    required this.subCategories,
  });

  int categoryId;
  String title;
  String slug;
  int positionOrder;
  List<String> categoryPath;
  List<int> categoryPathId;
  String icon;
  List<SubCategory> subCategories;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        categoryId: json["category_id"],
        title: json["title"],
        slug: json["slug"],
        positionOrder: json["position_order"],
        categoryPath: List<String>.from(json["category_path"].map((x) => x)),
        categoryPathId: List<int>.from(json["category_path_id"].map((x) => x)),
        icon: json["icon"],
        subCategories: List<SubCategory>.from(
            json["sub_categories"].map((x) => SubCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "title": title,
        "slug": slug,
        "position_order": positionOrder,
        "category_path": List<dynamic>.from(categoryPath.map((x) => x)),
        "category_path_id": List<dynamic>.from(categoryPathId.map((x) => x)),
        "icon": icon,
        "sub_categories":
            List<dynamic>.from(subCategories.map((x) => x.toJson())),
      };
}

class SubCategory {
  SubCategory({
    required this.id,
    required this.pid,
    required this.path,
    required this.title,
    required this.slug,
    required this.displayOrder,
    required this.categoryPath,
    required this.categoryPathId,
    required this.subCategories,
  });

  int id;
  int pid;
  String path;
  String title;
  String slug;
  int displayOrder;
  List<String> categoryPath;
  List<String> categoryPathId;
  List<dynamic> subCategories;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        pid: json["pid"],
        path: json["path"],
        title: json["title"],
        slug: json["slug"],
        displayOrder: json["display_order"],
        categoryPath: List<String>.from(json["category_path"].map((x) => x)),
        categoryPathId:
            List<String>.from(json["category_path_id"].map((x) => x)),
        subCategories: List<dynamic>.from(json["sub_categories"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pid": pid,
        "path": path,
        "title": title,
        "slug": slug,
        "display_order": displayOrder,
        "category_path": List<dynamic>.from(categoryPath.map((x) => x)),
        "category_path_id": List<dynamic>.from(categoryPathId.map((x) => x)),
        "sub_categories": List<dynamic>.from(subCategories.map((x) => x)),
      };
}

// import 'dart:convert';

// List<CategoryData> categoryDataFromJson(String str) => List<CategoryData>.from(
//     json.decode(str).map((x) => CategoryData.fromJson(x)));

// String categoryDataToJson(List<CategoryData> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class CategoryData {
//   CategoryData({
//     required this.categoryId,
//     required this.title,
//     required this.slug,
//     required this.positionOrder,
//     required this.categoryPath,
//     required this.categoryPathId,
//     required this.icon,
//     required this.subCategories,
//   });

//   int categoryId;
//   String title;
//   String slug;
//   int positionOrder;
//   List<String> categoryPath;
//   List<int> categoryPathId;
//   String icon;
//   List<SubCategory> subCategories;

//   factory CategoryData.fromJson(Map<String, dynamic> json) => CategoryData(
//         categoryId: json["category_id"],
//         title: json["title"],
//         slug: json["slug"],
//         positionOrder: json["position_order"],
//         categoryPath: List<String>.from(json["category_path"].map((x) => x)),
//         categoryPathId: List<int>.from(json["category_path_id"].map((x) => x)),
//         icon: json["icon"],
//         subCategories: List<SubCategory>.from(
//             json["sub_categories"].map((x) => SubCategory.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "category_id": categoryId,
//         "title": title,
//         "slug": slug,
//         "position_order": positionOrder,
//         "category_path": List<dynamic>.from(categoryPath.map((x) => x)),
//         "category_path_id": List<dynamic>.from(categoryPathId.map((x) => x)),
//         "icon": icon,
//         "sub_categories":
//             List<dynamic>.from(subCategories.map((x) => x.toJson())),
//       };
// }

// class SubCategory {
//   SubCategory({
//     required this.id,
//     required this.pid,
//     required this.path,
//     required this.title,
//     required this.slug,
//     required this.displayOrder,
//     required this.categoryPath,
//     required this.categoryPathId,
//     required this.subCategories,
//   });

//   int id;
//   int pid;
//   String path;
//   String title;
//   String slug;
//   int displayOrder;
//   List<String> categoryPath;
//   List<String> categoryPathId;
//   List<dynamic> subCategories;

//   factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
//         id: json["id"],
//         pid: json["pid"],
//         path: json["path"],
//         title: json["title"],
//         slug: json["slug"],
//         displayOrder: json["display_order"],
//         categoryPath: List<String>.from(json["category_path"].map((x) => x)),
//         categoryPathId:
//             List<String>.from(json["category_path_id"].map((x) => x)),
//         subCategories: List<dynamic>.from(json["sub_categories"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "pid": pid,
//         "path": path,
//         "title": title,
//         "slug": slug,
//         "display_order": displayOrder,
//         "category_path": List<dynamic>.from(categoryPath.map((x) => x)),
//         "category_path_id": List<dynamic>.from(categoryPathId.map((x) => x)),
//         "sub_categories": List<dynamic>.from(subCategories.map((x) => x)),
//       };
// }
