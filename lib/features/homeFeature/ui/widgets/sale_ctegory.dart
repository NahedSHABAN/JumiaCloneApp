import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';


class SaleCategory extends StatelessWidget {
  final List<String> images;
  final AppColors appColors;

  const SaleCategory({
    Key? key,
    required this.images,
    required this.appColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        color: appColors.secondColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 6.0.w,
                runSpacing: 3.0.w,
                children: [
                  for (int i = 0; i < images.length; i++)
                    if (i % 3 == 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int j = i; j < i + 3 && j < images.length; j++)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 120.h,
                                child: Image.asset(
                                  images[j],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                        ],
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
