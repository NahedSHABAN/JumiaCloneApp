import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class DelverySection extends StatelessWidget {
  const DelverySection({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: appColors.secondColor,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/Icons/truck.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                )
              ],
            ),
            10.horizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Door Delivery',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp
                      ),
                    ),
                    170.horizontalSpace,
                    Text(
                      'Details',
                      style: TextStyle(
                          color: appColors.navyBlueColor
                      ),
                    )
                  ],
                ),
                Text(
                  'Free delivery',
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Ready for delivery between 02 April & 04 April ',
                  overflow: TextOverflow.visible,
                ),

              ],
            )
          ],
        ),
        10.verticalSpace,
        Row(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: appColors.secondColor,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/Icons/product-return.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                )
              ],
            ),
            10.horizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Return Policy',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp
                      ),
                    ),
                    170.horizontalSpace,
                    Text(
                      'Details',
                      style: TextStyle(
                          color: appColors.navyBlueColor
                      ),
                    )
                  ],
                ),
                Text(
                  'Free return within the legal return period',
                  textAlign: TextAlign.start,
                ),
                Text(
                  'from 14 to 30 days, ',
                  overflow: TextOverflow.visible,
                ),

              ],
            )
          ],
        ),
      ],
    );
  }
}
