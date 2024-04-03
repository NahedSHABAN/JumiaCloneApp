import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';

class BorderedButton extends StatelessWidget {
  const BorderedButton({
    super.key,
    required this.appColors,
    required this.onPressed,
    required this.width,
    required this.color,
    required this.backgroundColor,
    this.borderColor, // Add borderColor parameter
    this.borderWidth = 1.0,
    this.icon// Add default borderWidth
  });

  final AppColors appColors;
  final VoidCallback onPressed;
  final double width;
  final Color color;
  final Color backgroundColor;
  final Color? borderColor;
  final double borderWidth;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 50.w,
      child: MaterialButton(
        minWidth: width,
        elevation: 0,
        color: backgroundColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder( // Apply border to the button
          side: BorderSide(
            color: borderColor ?? Colors.transparent, // Use transparent as default
            width: borderWidth,
          ),
          borderRadius: BorderRadius.circular(5.0), // You can adjust the border radius
        ),
        child: Icon(
          icon,
          color: borderColor,
        ),
      ),
    );
  }
}
