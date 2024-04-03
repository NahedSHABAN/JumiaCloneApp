import 'package:flutter/cupertino.dart';

import '../../../../core/utils/constants/app_colors.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Details',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: appColors.secondColor,
      ),
    );
  }
}
