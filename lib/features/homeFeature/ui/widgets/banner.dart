import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';

class CategoryBanner extends StatelessWidget {
  final String title;
  final Color color;
  final String bottonTitle;
  final Color bottonColor;
  final Color titleColor;

  const CategoryBanner({
    super.key,
    required this.title,
    required this.bottonTitle,
    required this.color,
    required this.bottonColor,
    required this.titleColor,
    required AppColors colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 32.h,
      decoration: BoxDecoration(color: color),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style:  TextStyle(fontSize:15.sp ,color: titleColor ),
              ),
            ),
            const Spacer(),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  bottonTitle,
                  style: TextStyle(fontSize: 10.sp, color: bottonColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
