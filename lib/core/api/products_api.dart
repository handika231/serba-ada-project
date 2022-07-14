import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:serbada/models/products/products.dart';

import 'base_url.dart';

class ProductsApi {
  static String productUrl = 'product';

  static Future getProductsApi() async {
    Dio dio = Dio();
    String url = BaseUrl.baseUrl + productUrl;
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Authorization'] =
        'Bearer da39a3ee5e6b4b0d3255bfef95601890afd80709';
    Response response;
    //get request with dio
    response = await dio.get(url);
    if (response.statusCode == 200) {
      return Products.fromJson(json.decode(response.data));
    } else {
      throw Exception('Failed to load products');
    }
  }
}
