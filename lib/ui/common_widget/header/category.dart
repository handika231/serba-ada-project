import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class CardCategory extends StatelessWidget {
  // final String imageUrl;
  final String name;
  final String imageUrl;
  const CardCategory({
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: ,
      // margin: const EdgeInsets.only(right: 24),
      // height: 10,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Container(
          //   width: 60.0,
          //   height: 60.0,
          //   decoration: BoxDecoration(
          //     color: AppColors.yellowColor,
          //     borderRadius: BorderRadius.circular(8),
          //   ),
          //   child: Image.network(
          //     imageUrl,
          //     fit: BoxFit.contain,
          //     color: AppColors.grayColor,
          //   ),
          // ),

          // const SizedBox(
          //   height: 12,
          // ),
          SizedBox(
            height: 50,
            // width: 1,
            child: Text(name,
                style: AppTextStyle.regularTextStyle.copyWith(fontSize: 13),
                // maxLines: 3,
                // overflow: TextOverflow.ellipsis,
                // strutStyle:StrutStyle() ,
                textAlign: TextAlign.center),
          ),

          // const SizedBox(width: 10)
        ],
      ),
    );
  }
}
