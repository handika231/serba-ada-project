import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class HomeCategory extends StatelessWidget {
  // final String imageUrl;
  final String name;

  const HomeCategory({
    // this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      // height: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: AppColors.grayColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset('assets/images/icon_growth.png'),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            // width: 1,
            child: Text(name,
                style: AppTextStyle.regularTextStyle.copyWith(fontSize: 13),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                // strutStyle:StrutStyle() ,
                textAlign: TextAlign.center),
          ),

          // const SizedBox(width: 10)
        ],
      ),
    );
  }
}
