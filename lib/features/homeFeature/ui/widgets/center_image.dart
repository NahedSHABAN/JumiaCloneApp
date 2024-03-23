import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class CenterImage extends StatelessWidget {
  const CenterImage({
    super.key,
    required this.appColors,
    required this.image,
    required this.color,
  });

  final AppColors appColors;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(top: 5.h,bottom: 5.h),
      child: Container(
        height: 120.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            height: 110.h,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
