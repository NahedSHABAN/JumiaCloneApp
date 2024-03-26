import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Text(
        'Terms and Conditions',
        style: TextStyle(
            color: AppColors.appBarActive,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.appBarActive
        ),
      ),
    );
  }
}
