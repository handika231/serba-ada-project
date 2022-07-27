import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:serbada/core/api/base_url.dart';
import 'package:serbada/models/detailproducts/detail_products_model.dart';

class DetailProductsApi {
  static String detailProductUrl = 'detail';

  static Future<DetailsProducts> getDetailProduct(String productId) async {
    Dio dio = Dio();
    String url = '${BaseUrl.baseUrl}$detailProductUrl?product_id=$productId';
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Authorization'] =
        'Bearer da39a3ee5e6b4b0d3255bfef95601890afd80709';
    Response response;
    //get request with dio
    response = await dio.get(url);
    return DetailsProducts.fromJson(json.decode(response.data));
  }
}
