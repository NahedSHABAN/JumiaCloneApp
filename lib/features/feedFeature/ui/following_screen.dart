import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';
import 'package:jumia/features/LoginFeature/ui/login_screen.dart';
import 'package:jumia/features/feedFeature/ui/widgets/button.dart';

class Following extends StatelessWidget {
  const Following({super.key});
  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.primaryColor,
      body: Column(
        children: [
          30.verticalSpace, // Assuming 30.verticalSpace is a custom extension method
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              ),
            ],
          ),
          10.verticalSpace,
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Please sign in to access updates from your favorite sellers',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'You will receive daily notifications about the sellers that you follow and our most popular sellers. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.sp,
              ),
            ),
          ),
          10.verticalSpace,
          Button(
            appColors: appColors,
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Login()));
            },
            title: 'SIGN IN',
            width: 330.w,
            backgroundColor: AppColors.appBarActive,
            color: appColors.secondColor,
          ),
        ],
      ),
    );
  }
}
