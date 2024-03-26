import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class BalanceBanner extends StatelessWidget {
  const BalanceBanner({
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
        width: double.infinity,
        decoration: BoxDecoration(
          color: appColors.secondColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              5.horizontalSpace,
              Icon(
                Icons.account_balance_wallet,
                color: appColors.navyBlueColor,
                size: 25.sp,
              ),
              12.horizontalSpace,
              Text(
                'Login to see your balance',
                style: TextStyle(
                    color:appColors.navyBlueColor,
                    fontSize: 15.sp
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
