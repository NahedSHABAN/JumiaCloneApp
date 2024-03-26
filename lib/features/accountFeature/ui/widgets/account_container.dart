import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';
import 'account_button.dart';
import 'account_button_image.dart';

class AccountContainer extends StatelessWidget {
  const AccountContainer({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 400.h,
        decoration: BoxDecoration(
            color: appColors.secondColor,
            borderRadius: BorderRadius.circular(7)
        ),
        child: const Column(
          children: [
            AccountButtonImage(
              title: 'Orders',
              icon: 'assets/images/Icons/package.png',
            ),
            AccountButton(
              icon: Icons.mail_outlined,
              title: 'Inbox',
            ),
            AccountButton(
              icon: Icons.rate_review_outlined,
              title: 'Pending Reviews',
            ),
            AccountButtonImage(
              title: 'Vouchers',
              icon: 'assets/images/Icons/discount.png',
            ),
            AccountButtonImage(
              title: 'Saved Items',
              icon: 'assets/images/Icons/heart.png',
            ),
            AccountButton(
              icon: Icons.store,
              title: 'Follow Seller',
            ),
            AccountButtonImage(
              title: 'Recently Viewed',
              icon: 'assets/images/Icons/undo.png',
            ),
            AccountButton(
              icon: Icons.youtube_searched_for,
              title: 'Recently Searched',
            ),

          ],
        ),
      ),
    );
  }
}
