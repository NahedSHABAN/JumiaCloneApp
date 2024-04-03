import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class CenterBanner extends StatelessWidget {
  final String title;
  final AppColors colors;
  final Color color;
  final String? Suffix_icon;
  final String? postfix_icon;

  const CenterBanner({
    Key? key,
    required this.colors,
    required this.title,
    required this.color,
    this.Suffix_icon,
    this.postfix_icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 32.h,
      decoration: BoxDecoration(color: color),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (Suffix_icon != null) ...[
                      Image.asset(
                        Suffix_icon!,
                        height: 10.h,
                        width: 10.w,
                      ),
                      SizedBox(width: 2.h),
                    ],
                    Text(
                      title.tr(),
                      style:  TextStyle(fontWeight: FontWeight.bold , fontSize:15.sp),
                    ),
                    if (postfix_icon != null) ...[
                      SizedBox(width: 2.h),
                      Image.asset(
                        postfix_icon!,
                        height: 12.h,
                        width: 12.w,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
