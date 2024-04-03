import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/productDetailsFeature/ui/widgets/review_section.dart';

import '../../../../core/utils/constants/app_colors.dart';

class ProductRatingContainer extends StatelessWidget {
  const ProductRatingContainer({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: appColors.secondColor
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text('Product Rating & Reviews' , style: TextStyle(fontSize: 15.sp),),
                    Row(
                      children: [
                        Text('(4.1/5) ',style: TextStyle(color: AppColors.appBarActive),),
                        5.horizontalSpace,
                        Text('(10 ratings)')
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios,size: 15.sp)
              ],
            ),
            const Divider(),
            5.verticalSpace,
            const ReviewSection(),
            5.verticalSpace,
            const Divider(),
            const ReviewSection(),
            5.verticalSpace,
            const Divider(),
            const ReviewSection(),
          ],
        ),
      ),
    );
  }
}
