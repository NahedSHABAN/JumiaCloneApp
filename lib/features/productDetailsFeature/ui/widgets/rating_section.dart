import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min, // Adjust the main axis size to fit the content
      crossAxisAlignment: CrossAxisAlignment.center, // Align children to the start
      children: [
        RatingBar.builder(
          itemSize: 15.sp,
          initialRating: 3.5,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemBuilder: (context, _) => Icon(
            Icons.star_rounded,
            color: AppColors.appBarActive,
          ),
          onRatingUpdate: (rating) {
          },
        ),
        5.horizontalSpace,
        Text(
          '(10 ratings)',
          style: TextStyle(
            fontSize: 14, // Adjust font size as needed
            color: appColors.navyBlueColor, // Adjust text color as needed
          ),
        ),
        const Spacer(),
        Icon(Icons.share,color: AppColors.appBarActive,),
        10.horizontalSpace,
        Image.asset(
          'assets/images/Icons/heart (1).png',
          height: 20.h,
          width: 20.w,
        )

      ],
    );
  }
}
