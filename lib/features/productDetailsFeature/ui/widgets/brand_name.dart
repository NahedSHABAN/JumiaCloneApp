import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';

class BrandName extends StatelessWidget {
  const BrandName({
    super.key,
    required this.title
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Brand: ',
          style: TextStyle(
              color: AppColors.textColor
          ),
        ),
        Text(
          title,
          style: TextStyle(
              color: AppColors.textColor
          ),
        ),

      ],
    );
  }
}
