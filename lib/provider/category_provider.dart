import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:serbada/models/category_model.dart';

import '../core/api/category_api.dart';

class CategoryProvider with ChangeNotifier {
  final BuildContext context;
  CategoryProvider(this.context) {
    getData();
  }

  bool loading = true;
  getData() async {
    loading = true;
    await getCategoryData();
    notifyListeners();
    loading = false;
  }

  List<CategoryModelData> categoryModeldata = [];

  getCategoryData() async {
    var nowPlayingdata = await CategoryApi.getDataCategory();

    // DialogRouter.displayProgressDialog(context);
    if (nowPlayingdata == null) return;
    List dataList = nowPlayingdata['results'];

    for (var element in dataList) {
      // DialogRouter.displayProgressDialog(context);
      categoryModeldata.add(CategoryModelData.fromJson(element));
      notifyListeners();
    }
    // DialogRouter.closeProgressDialog(context);
  }
}
