import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';

class Following extends StatelessWidget {
  const Following({super.key});
  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the Stack
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          30.verticalSpace, // Assuming 30.verticalSpace is a custom extension method
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: appColors.secondColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                height: 90.h,
                width: 100.w,
              ),
              Container(
                decoration: BoxDecoration(
                  color: appColors.secondColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                height: 90.h,
                width: 100.w,
                child: Icon(
                  Icons.store_mall_directory_outlined,
                  color: AppColors.appBarActive,
                  size: 70.sp,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
