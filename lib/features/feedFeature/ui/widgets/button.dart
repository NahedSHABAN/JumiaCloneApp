import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.appColors,
    required this.title,
    required this.onPressed,
    required this.width,
    required this.color,
    required this.backgroundColor,
  }) : super(key: key);

  final AppColors appColors;
  final String title;
  final VoidCallback onPressed;
  final double width;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: MaterialButton(
        minWidth: width,
        elevation: 0,
        color: backgroundColor,
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: 15.sp,
          ),
        ),
      ),
    );
  }
}
