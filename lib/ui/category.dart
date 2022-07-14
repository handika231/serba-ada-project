import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serbada/provider/category_provider.dart';
import 'package:serbada/ui/theme/theme.dart';
import 'package:shimmer/shimmer.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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

    return ChangeNotifierProvider<CategoryProvider>(
      create: (context) => CategoryProvider(context),
      child: Consumer<CategoryProvider>(
        builder: (context, provider, _) => (provider.loading == true)
            ? SafeArea(
                child: Shimmer.fromColors(
                  baseColor: Colors.black26,
                  highlightColor: Colors.yellow,
                  child: const Center(
                    child: Text(
                      'Mohon Tunggu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            : Scaffold(
                resizeToAvoidBottomInset: false,
                body: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
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
                                "Category",
                                style: AppTextStyle.boldTextStyle
                                    .copyWith(fontSize: 18),
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
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
