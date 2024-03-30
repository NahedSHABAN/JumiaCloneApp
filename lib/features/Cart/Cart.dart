// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'widgets/CartContainer.dart';
import 'widgets/ShoppingButton.dart';
import 'widgets/cart_slider.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/home_screen_consts.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appColors.primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: CartContainer(), // No need to specify background color
            ),
            ShoppingButton(),
            SizedBox(height: 10),
            CartSlider(
              title: 'Recently Viewed',
              images: homeSlider1,
              backgroundColor: appColors.secondColor,
            ),
            SizedBox(height: 10),
            CartSlider(
              title: 'Recommended for you',
              images: homeSlider1,
              backgroundColor: appColors.secondColor,
            ),
          ],
        ),
      ),
    );
  }
}
