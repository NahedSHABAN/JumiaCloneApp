import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class SecondText extends StatelessWidget {
  const SecondText({
    super.key,
    required this.appColors,
    required this.text,
  });

  final AppColors appColors;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 15.sp,
            color: appColors.black.withOpacity(0.7)
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
