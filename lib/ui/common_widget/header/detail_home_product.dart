import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class DetailHomeProduct extends StatelessWidget {
  // final String imageUrl;
  final String nameProduk;
  final String hargaProduk;
  final String imageUrl;

  const DetailHomeProduct({
    // this.imageUrl,
    required this.hargaProduk,
    required this.nameProduk,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(imageUrl,
                  // width: double.infinity,
                  height: 185,
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hargaProduk,
                  // 'Rp.20.000',
                  style: AppTextStyle.boldTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  // namaProduk,
                  nameProduk,
                  style: AppTextStyle.regularTextStyle.copyWith(fontSize: 13),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
