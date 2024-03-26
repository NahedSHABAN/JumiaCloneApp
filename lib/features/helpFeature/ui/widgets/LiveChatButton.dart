import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';

class LiveButton extends StatelessWidget {
  const LiveButton({
    Key? key,
    required this.appColors,
    required this.title,
    required this.onPressed,
    required this.width,
    required this.color,
    required this.backgroundColor,
    this.icon,
  }) : super(key: key);

  final AppColors appColors;
  final String title;
  final VoidCallback onPressed;
  final double width;
  final Color color;
  final Color backgroundColor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: MaterialButton(
        minWidth: width,
        color: backgroundColor,
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon,color: appColors.secondColor,size: 25.sp,),
            80.horizontalSpace,
            Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
