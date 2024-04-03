import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
            const Spacer(),
            const Text('19-03-2024')
          ],
        ),
        5.verticalSpace,
        const Text('جيد'),
        5.verticalSpace,
        const Text('كويس تغطية خفيفة'),
        5.verticalSpace,

        Row(
          children: [
            const Text('by Aya'),
            const Spacer(),
            Icon(Icons.check_circle_outline,color: Colors.lightGreenAccent.shade700,size: 15.sp,),
            3.horizontalSpace,
            Text('Verified Purchase',style: TextStyle(color:Colors.lightGreenAccent.shade700),)
          ],
        ),
      ],
    );
  }
}
