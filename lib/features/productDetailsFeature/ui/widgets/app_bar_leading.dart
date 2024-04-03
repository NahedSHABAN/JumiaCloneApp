import 'package:flutter/material.dart';

import '../../../../core/router/layout/bottom_nav_bar.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../homeFeature/ui/home_screen.dart';

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BottomNavBar()));
      },
      child: Icon(
        Icons.arrow_back_outlined,
        color: appColors.secondColor,

      ),
    );
  }
}
