import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class HomeProduct extends StatelessWidget {
  // final String imageUrl;
  final String nameProduk;

  final String hargaProduk;

  const HomeProduct({
    // this.imageUrl,
    required this.nameProduk,
    required this.hargaProduk,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/images/produk_1.png',
                  // width: double.infinity,
                  height: 165,
                  fit: BoxFit.cover),
            ),
            // Positioned(
            //   left: 0,
            //   bottom: 0,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: AppColors.greenColor,
            //       borderRadius: BorderRadius.circular(5),
            //     ),
            //     padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
            //     // child: Text(
            //     //   'Tunai',
            //     //   style: AppTextStyle.boldTextStyle.copyWith(
            //     //       fontSize: 10,
            //     //       color: AppColors.whiteColor),
            //     // ),
            //   ),
            // ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          child: Text(
            hargaProduk,
            // 'Rp.20.000',
            style: AppTextStyle.boldTextStyle.copyWith(fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Container(
          height: 28,
          child: Text(
            // namaProduk,
            nameProduk,
            style: AppTextStyle.regularTextStyle.copyWith(fontSize: 13),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
