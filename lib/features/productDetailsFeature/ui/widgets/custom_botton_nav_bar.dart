import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';
import '../../../../core/router/layout/bottom_nav_bar.dart';
import '../../../helpFeature/ui/widgets/LiveChatButton.dart';
import 'bordered_icon_button.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key}); // Constructor with Key parameter

  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BorderedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BottomNavBar()));
            },
            appColors: const AppColors(),
            width: 50.w,
            color: AppColors.appBarActive,
            backgroundColor: appColors.secondColor,
            icon: Icons.home_outlined,
            borderWidth: 1.w,
            borderColor: AppColors.appBarActive,
          ),
          LiveButton(
            backgroundColor: AppColors.appBarActive,
            color: appColors.secondColor,
            width: 270.w,
            appColors: const AppColors(),
            onPressed: () {},
            title: 'ADD TO CART',
            icon: Icons.add_shopping_cart_outlined,
          )
        ],
      ),
    );
  }
}
