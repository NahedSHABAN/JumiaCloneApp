import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';

class SecondSettingsButton extends StatelessWidget {
  const SecondSettingsButton({
    super.key,
    required this.title,
    required this.title2,
    required this.onPressed

  });

  final String title;
  final String title2;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: MaterialButton(
        onPressed:(){},
        child: Row(
          children: [

            Text(
              title,
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
            const Spacer(),
            Text(
              title2,
              style: TextStyle(
                fontSize: 13.sp,
                color: AppColors.textColor
              ),
            ),
            5.horizontalSpace,
            Icon(Icons.arrow_forward_ios,
              size: 12.sp,
            ),

          ],
        ),
      ),
    );
  }
}
