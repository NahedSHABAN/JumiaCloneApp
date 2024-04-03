import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class PromotionsSection extends StatelessWidget {
  const PromotionsSection({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: appColors.secondColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Promotions',
              style:
              TextStyle(fontSize: 15.sp, color: appColors.black),
            ),
            const Divider(),
            5.verticalSpace,

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Icons/unnamed.png',
                  height: 20.h,
                  width: 20.w,
                ),
                10.horizontalSpace,
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text:'Donate to your preferred organization through JumiaPay',
                            style: TextStyle(
                              color: appColors.navyBlueColor,
                            )

                        )
                      ]
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
