import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:serbada/core/api/base_url.dart';
import 'package:serbada/models/category/category.dart';

class CategoryProductsApi {
  static String bannerUrl = 'category';

  static Future<Category> getCategoryProduct() async {
    Dio dio = Dio();
    String url = BaseUrl.baseUrl + bannerUrl;
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Authorization'] =
        'Bearer da39a3ee5e6b4b0d3255bfef95601890afd80709';
    Response response;
    //get request with dio
    response = await dio.get(url);
    return Category.fromJson(json.decode(response.data));
  }
}
