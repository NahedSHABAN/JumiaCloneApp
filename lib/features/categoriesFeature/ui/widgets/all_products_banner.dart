import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class AllProductsBanner extends StatelessWidget {
  const AllProductsBanner({
    super.key,
    required this.appColors,
    required this.onTap
  });

  final AppColors appColors;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: appColors.secondColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('ALL PRODUCTS',
                  style: TextStyle(
                      fontSize: 12.5.sp
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios,size: 15.sp,)
              ],
            ),
          ),

      ),
    );
  }
}
