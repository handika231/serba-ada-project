import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:serbada/core/api/base_url.dart';
import 'package:serbada/models/banner/banner.dart';

class BannerApi {
  static String bannerUrl = 'banner';

  static Future<Banner> getBanner() async {
    Dio dio = Dio();
    String url = BaseUrl.baseUrl + bannerUrl;
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Authorization'] =
        'Bearer da39a3ee5e6b4b0d3255bfef95601890afd80709';
    Response response;
    //get request with dio
    response = await dio.get(url);
    return Banner.fromJson(json.decode(response.data));
  }
}
