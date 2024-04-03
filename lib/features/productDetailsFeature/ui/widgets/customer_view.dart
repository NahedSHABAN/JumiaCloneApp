import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';
import '../../../homeFeature/ui/widgets/banner.dart';
import '../../../homeFeature/ui/widgets/products_slider.dart';

class CustomerVeiw extends StatelessWidget {
  const CustomerVeiw({
    super.key,
    required this.appColors,
    required this.title,
    required this.bottonTitle
  });

  final AppColors appColors;
  final String title ;
  final String bottonTitle ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryBanner(
          titleColor: appColors.black,
          colors: const AppColors(),
          title: title,
          color: appColors.secondColor,
          bottonTitle: bottonTitle,
          bottonColor: AppColors.appBarActive,
        ),
        ProductSlider(
          appColors: appColors,
          productsData: [
            ProductData(
              sale: '55',
              image: 'assets/images/Products/1.jpg',
              name:
              'Maybelline New York Maybelline New York Superstay Matte Ink Lipstick- 15 Lover',
              price: 'EGP 378.00',
            ),
            ProductData(
              sale: '30',
              image: 'assets/images/Products/2.jpg',
              name:
              'Maybelline New York Maybelline New York Superstay Matte Ink Lipstick- 15 Lover',
              price: 'EGP 378.00',
            ),
            ProductData(
              sale: '55',
              image: 'assets/images/Products/3.jpg',
              name:
              'Maybelline New York Maybelline New York Superstay Matte Ink Lipstick- 15 Lover',
              price: 'EGP 378.00',
            ),
            ProductData(
              sale: '15',
              image: 'assets/images/Products/4.jpg',
              name:
              'Maybelline New York Maybelline New York Superstay Matte Ink Lipstick- 15 Lover',
              price: 'EGP 378.00',
            ),
            ProductData(
              sale: '15',
              image: 'assets/images/Products/5.jpg',
              name:
              'Maybelline New York Maybelline New York Superstay Matte Ink Lipstick- 15 Lover',
              price: 'EGP 378.00',
            ),
          ],
        ),

      ],
    );
  }
}
