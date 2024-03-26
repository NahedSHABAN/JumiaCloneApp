import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';
import 'AboutButton.dart';

class AboutJumiaContainer extends StatelessWidget {
  const AboutJumiaContainer({
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
        height: 200.h,
        decoration: BoxDecoration(
            color: appColors.secondColor,
            borderRadius: BorderRadius.circular(7)
        ),
        child: const Column(
          children: [
            AboutButton(
              title: 'Jumia Services',
            ),
            AboutButton(
              title: 'Help Center',
            ),
            AboutButton(
              title: 'Terms and conditions',
            ),
            AboutButton(
              title: 'Privacy Policy',
            ),
          ],
        ),
      ),
    );
  }
}
