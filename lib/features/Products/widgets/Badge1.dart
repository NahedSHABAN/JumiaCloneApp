import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';

class Badge1 extends StatelessWidget {
  final String title;

  const Badge1({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = AppColors(); // Initialize AppColors

    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: appColors.flashSale,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
