import 'package:flutter/material.dart';
import 'package:serbada/ui/theme/theme.dart';

import '../bottom_navbar.dart';

class BestSeller extends StatefulWidget {
  const BestSeller({Key? key}) : super(key: key);

  @override
  State<BestSeller> createState() => BestSellerState();
}

class BestSellerState extends State<BestSeller> {
  bool isChecked = false;

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
                      "Serbada App",
                      style: AppTextStyle.boldTextStyle.copyWith(fontSize: 18),
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
            Expanded(
              child: RefreshIndicator(
                onRefresh: () {
                  return Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Navbar(),
                      ));
                },
                child: const Padding(
                    padding: EdgeInsets.fromLTRB(13, 13, 13, 0),
                    child: Text('data seller')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
