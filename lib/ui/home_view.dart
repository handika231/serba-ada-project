import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:serbada/ui/common_widget/header/home_category.dart';
import 'package:serbada/ui/common_widget/header/home_product.dart';
import 'package:serbada/ui/theme/theme.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../bottom_navbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  bool isChecked = false;
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  final List<Widget> myData = [
    Container(
      height: 120,
      // width: 350,
      width: double.infinity,
      color: AppColors.blueColor,
      child: const Text("data 1"),
    ),
    Container(
      height: 120,
      width: 350,
      color: AppColors.greenColor,
      child: const Text("data 2"),
    ),
    Container(
      height: 120,
      width: 350,
      color: AppColors.orangeColor,
      child: const Text("data 3"),
    ),
  ];

  get callbackFunction => null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width > 600) {
    } else {}

    return
        // SafeArea(
        //             child: Shimmer.fromColors(
        //               baseColor: Colors.black26,
        //               highlightColor: Colors.yellow,
        //               child: const Center(
        //                 child: Text(
        //                   'Mohon Tunggu',
        //                   textAlign: TextAlign.center,
        //                   style: TextStyle(
        //                     fontSize: 40.0,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           )
        //         :
        Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        shadowColor: AppColors.orangePri,
        foregroundColor: AppColors.orangePri,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 185.0),
                child: SvgPicture.asset(
                  'assets/images/serbada_logo.svg',
                  alignment: Alignment.centerLeft,
                ),
              ),
              Divider(height: 2, thickness: 3, color: AppColors.orangePrimary)
            ],
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
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
                        offset: const Offset(0.0, 0.75)),
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 18),
                // child:
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     const SizedBox(
                //       height: 30,
                //     ),
                //     SizedBox(
                //       width: double.infinity,
                //       child: SvgPicture.asset(
                //         'assets/images/serbada_logo.svg',
                //         height: 28.0,
                //         width: 20.0,
                //         alignment: Alignment.topLeft,
                //         allowDrawingOutsideViewBox: false,
                //       ),
                //     ),
                //     const SizedBox(
                //       height: 15,
                //     ),
                //   ],
                // ),
              ),
              Divider(height: 2, thickness: 3, color: AppColors.orangePrimary
                  // Color.fromARGB(255, 189, 100, 11),
                  ),
              const SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Cari.. ',
                    filled: true,
                    fillColor: AppColors.inputFillColor,
                    hintStyle: AppTextStyle.regularTextStyle
                        .copyWith(color: AppColors.orangePrimary, fontSize: 14),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.orangeColor,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.orangeColor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.inputBorderColor, width: 1),
                    ),
                  ),
                  // controller: inputSearchController,
                  // onChanged: (value) {
                  //   inputSearch = value;
                  // },
                ),
              ),
              RefreshIndicator(
                onRefresh: () {
                  return Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Navbar(),
                      ));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselSlider(
                      items: myData,
                      carouselController: _controller,
                      options: CarouselOptions(
                          viewportFraction:
                              MediaQuery.of(context).size.shortestSide < 600
                                  ? 0.9
                                  : 0.95,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 2.20,
                          height: 200,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: myData.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.only(
                                top: 16, left: 8, right: 8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // verticalDirection: VerticalDirection.down,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            HomeCategory(name: 'Kesehatan & Kecantikan '),
                            SizedBox(
                              width: 24,
                            ),
                            HomeCategory(name: 'Fashion & Apparel'),
                            SizedBox(
                              width: 24,
                            ),
                            HomeCategory(name: 'Teknologi'),
                            SizedBox(
                              width: 24,
                            ),
                            HomeCategory(name: 'Pakaian'),
                            SizedBox(
                              width: 24,
                            ),
                            HomeCategory(name: 'Teknologi'),
                            SizedBox(
                              width: 24,
                            ),
                            HomeCategory(name: 'Pakaian'),
                            SizedBox(
                              width: 24,
                            ),
                            HomeCategory(name: 'Teknologi'),
                            SizedBox(
                              width: 24,
                            ),
                            HomeCategory(name: 'Pakaian'),
                            SizedBox(
                              width: 24,
                            ),
                            HomeCategory(name: 'Teknologi'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 260),
                      child: Text(
                        'Rekomendasi',
                        style: AppTextStyle.regularTextStyle.copyWith(
                          color: AppColors.blueColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: const [
                          HomeProduct(
                              nameProduk: 'Baju', hargaProduk: '220.000'),
                          SizedBox(
                            width: 8,
                          ),
                          HomeProduct(
                              nameProduk: 'Sepatu', hargaProduk: '320.000'),
                          SizedBox(
                            width: 8,
                          ),
                          // HomeProduct(
                          //     nameProduk: 'Celana', hargaProduk: '120.000'),
                        ],
                      ),

                      // child: StaggeredGridView.countBuilder(
                      //   crossAxisCount: 3,
                      //   // itemCount: provider.daftarProdukModelData.length,
                      //   itemBuilder: (context, i) => const HomeProduct(
                      //     hargaProduk: '20.000',
                      //     nameProduk: 'Sepatu',
                      //   ),
                      //   staggeredTileBuilder: (i) => const StaggeredTile.fit(1),
                      // ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: const [
                          HomeProduct(
                              nameProduk: 'Baju', hargaProduk: '220.000'),
                          SizedBox(
                            width: 8,
                          ),
                          HomeProduct(
                              nameProduk: 'Sepatu', hargaProduk: '320.000'),
                          SizedBox(
                            width: 8,
                          ),
                          // HomeProduct(
                          //     nameProduk: 'Celana', hargaProduk: '120.000'),
                        ],
                      ),

                      // child: StaggeredGridView.countBuilder(
                      //   crossAxisCount: 3,
                      //   // itemCount: provider.daftarProdukModelData.length,
                      //   itemBuilder: (context, i) => const HomeProduct(
                      //     hargaProduk: '20.000',
                      //     nameProduk: 'Sepatu',
                      //   ),
                      //   staggeredTileBuilder: (i) => const StaggeredTile.fit(1),
                      // ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: const [
                          HomeProduct(
                              nameProduk: 'Baju', hargaProduk: '220.000'),
                          SizedBox(
                            width: 8,
                          ),
                          HomeProduct(
                              nameProduk: 'Sepatu', hargaProduk: '320.000'),
                          SizedBox(
                            width: 8,
                          ),
                          // HomeProduct(
                          //     nameProduk: 'Celana', hargaProduk: '120.000'),
                        ],
                      ),

                      // child: StaggeredGridView.countBuilder(
                      //   crossAxisCount: 3,
                      //   // itemCount: provider.daftarProdukModelData.length,
                      //   itemBuilder: (context, i) => const HomeProduct(
                      //     hargaProduk: '20.000',
                      //     nameProduk: 'Sepatu',
                      //   ),
                      //   staggeredTileBuilder: (i) => const StaggeredTile.fit(1),
                      // ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}