// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:serbada/core/util/log.dart';

import '../flutter_no_sql.dart';
import 'base_url.dart';
import 'package:dio/dio.dart';

class BestSellerApi {
  static String bestSeller = 'category';

  static getDataBestSeller() async {
    String url = BaseUrl.baseUrl + bestSeller;
    Dio dio = Dio();
    String? token = FlutterNoSql.getToken();
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Authorization'] =
        'Bearer da39a3ee5e6b4b0d3255bfef95601890afd80709';

    print(token);

    Response response;
    try {
      response = await dio.post(url);
      // L.map(response.data);
      response.data();
      return response.data;
    } catch (e) {
      L.error(e.toString());
      // log(e.toString());

      return null;
    }
  }
}
