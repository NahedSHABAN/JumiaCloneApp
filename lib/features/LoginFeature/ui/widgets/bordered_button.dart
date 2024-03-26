import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';

class BorderedButton extends StatelessWidget {
  const BorderedButton({
    Key? key,
    required this.appColors,
    required this.title,
    required this.onPressed,
    required this.width,
    required this.color,
    required this.backgroundColor,
    this.borderColor, // Add borderColor parameter
    this.borderWidth = 1.0,
    this.icon// Add default borderWidth
  }) : super(key: key);

  final AppColors appColors;
  final String title;
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
      width: 300.w,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
               icon,
              color: appColors.secondColor,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 50.w
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: 15.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
