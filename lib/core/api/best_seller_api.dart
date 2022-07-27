// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:serbada/core/util/log.dart';
import 'package:serbada/models/bestseller_model.dart';

import '../../models/category/category.dart';
import '../flutter_no_sql.dart';
import 'base_url.dart';
import 'package:dio/dio.dart';

class BestSellerApi {
  static String bestSeller = 'popular';

  static Future<BestSeller> getBestSeller() async {
    Dio dio = Dio();
    String url = BaseUrl.baseUrl + bestSeller;
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Authorization'] =
        'Bearer da39a3ee5e6b4b0d3255bfef95601890afd80709';
    Response response;
    //get request with dio
    response = await dio.get(url);
    return BestSeller.fromJson(json.decode(response.data));
  }
}
