import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 10),
      child: Row(
        children: [
          Icon(Icons.search_sharp,
              color: appColors.secondColor),
          const SizedBox(width: 10),
          Icon(Icons.shopping_cart_outlined,
              color: appColors.secondColor),
        ],
      ),
    );
  }
}
