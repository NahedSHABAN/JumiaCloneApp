import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class ShopAllImages extends StatelessWidget {
  const ShopAllImages({
    super.key,
    required this.appColors,
    required this.image1,
    required this.image2,
  });

  final AppColors appColors;
  final String image1;
  final String image2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        vertical: 1,
        horizontal: 8
      ),
      child: Container(
        width: double.infinity,
        color: appColors.secondColor,
        height: 130.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                image1,
                width: double.infinity,
                height: 120.h,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 10.w), // Adjust the spacing as needed
            Expanded(
              flex: 1,
              child: Image.asset(
                image2, // You can change this to the desired image path
                width: double.infinity,
                height: 120.h,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
