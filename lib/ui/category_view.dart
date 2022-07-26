import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serbada/core/api/category_products_api.dart';
import 'package:serbada/provider/category_provider.dart';
import 'package:serbada/ui/common_widget/header/category.dart';
import 'package:serbada/ui/theme/theme.dart';
import 'package:shimmer/shimmer.dart';

import '../models/category/category.dart';
import 'common_widget/header/home_category.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double widthContent;
    if (screenSize.width > 600) {
      widthContent = MediaQuery.of(context).size.width * 0.6;
    } else {
      widthContent = MediaQuery.of(context).size.width;
    }

    return
        // Consumer<CategoryProvider>(
        //   builder: (context, provider, _) => (provider.loading == true)
        //       ?
        //        SafeArea(
        //           child: Shimmer.fromColors(
        //             baseColor: Colors.black26,
        //             highlightColor: Colors.yellow,
        //             child: const Center(
        //               child: Text(
        //                 'Mohon Tunggu',
        //                 textAlign: TextAlign.center,
        //                 style: TextStyle(
        //                   fontSize: 40.0,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //             ),
        //           ),
        //         )
        //       :
        Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: AppColors.orangePrimary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.lightGrayColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75)),
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Kategori",
                        style:
                            AppTextStyle.boldTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                // color: AppColors.greenColor,
                child: FutureBuilder(
                  future: CategoryProductsApi.getCategoryProduct(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null ||
                        snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return const Center(
                        child: Text('Data Error...'),
                      );
                    } else {
                      Category category = snapshot.data;
                      final result = category.response?.results;
                      return Column(
                        // verticalDirection: VerticalDirection.down,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: result!
                            .map(
                              (item) => Padding(
                                  padding: const EdgeInsets.all(14),
                                  child: InkWell(
                                    child: Column(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              item.title.toString(),
                                              style: AppTextStyle.boldTextStyle,
                                            ),
                                            const Icon(
                                                Icons.arrow_right_rounded)
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        const Divider(
                                          height: 8,
                                        )
                                      ],
                                    ),
                                  )),
                              // CardCategory(
                              //   imageUrl: item.icon.toString(),
                              //   name: item.title.toString(),
                              // ),
                            )
                            .toList(),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
