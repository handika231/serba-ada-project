import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:serbada/core/api/best_seller_api.dart';
import 'package:serbada/ui/theme/theme.dart';
import '../models/bestseller_model.dart';

import 'common_widget/header/home_product.dart';

class BestSellerView extends StatefulWidget {
  const BestSellerView({Key? key}) : super(key: key);

  @override
  State<BestSellerView> createState() => _BestSellerViewState();
}

class _BestSellerViewState extends State<BestSellerView> {
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
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        shadowColor: AppColors.orangePri,
        foregroundColor: AppColors.orangePri,
        //TODO: CHANGE IMAGE FROM ACTION TO TITLE, BUG FIXED RESPONSIVE
        title: const Padding(
          padding: EdgeInsets.only(right: 0),
          child: Text('Best Seller'),
          // SvgPicture.asset(
          //   'assets/images/serbada_logo.svg',
          //   alignment: Alignment.centerLeft,
          // ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(height: 2, thickness: 3, color: AppColors.orangePrimary)
            ],
          )
        ],
      ),

      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     color: AppColors.lightGrayColor,
              //     boxShadow: [
              //       BoxShadow(
              //           color: Colors.grey.withOpacity(0.5),
              //           blurRadius: 15.0,
              //           offset: Offset(0.0, 0.75)),
              //     ],
              //   ),
              //   padding: const EdgeInsets.symmetric(horizontal: 18),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       const SizedBox(
              //         height: 30,
              //       ),
              //       SizedBox(
              //         width: double.infinity,
              //         child: Text(
              //           "Kategori",
              //           style:
              //               AppTextStyle.boldTextStyle.copyWith(fontSize: 18),
              //         ),
              //       ),
              //       const SizedBox(
              //         height: 13,
              //       ),
              //       const SizedBox(
              //         height: 15,
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                child: FutureBuilder(
                  future: BestSellerApi.getBestSeller(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null ||
                        snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      List<ResultData> result = snapshot.data.response?.results;
                      print(result.runtimeType);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 16),
                          //   child: Text(
                          //     'Rekomendasi',
                          //     style: AppTextStyle.boldTextStyle.copyWith(
                          //       color: AppColors.orangeColor,
                          //     ),
                          //   ),
                          // ),

                          const SizedBox(
                            height: 60,
                          ),
                          GridView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.8,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                            ),
                            children: result.map((item) {
                              // TODO: Mengambil gambar pertama dari gallery
                              final image = item.gallery!
                                  .map((e) => e.urlOriginal)
                                  .toList()
                                  .first;
                              return InkWell(
                                // onTap: () {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) =>
                                //           DetailProdukView(productId),
                                //     ),
                                //   );
                                // },

                                child: HomeProduct(
                                  imageUrl: image.toString(),
                                  hargaProduk: item.priceNormalRp.toString(),
                                  nameProduk: item.name.toString(),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
