import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class LeftUnits extends StatelessWidget {
  const LeftUnits({
    super.key,
    required this.appColors,
    required this.units
  });

  final AppColors appColors;
  final String units;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/Icons/exclamation-mark.png',
          height: 15.h,
          width: 15.w,
        ),
        2.horizontalSpace,
        Text(
          units,
          style: TextStyle(
              color: appColors.flashSale
          ),
        ),
        2.horizontalSpace,
        Text(
          'units left',
          style: TextStyle(
              color: appColors.flashSale
          ),
        )
      ],
    );
  }
}
