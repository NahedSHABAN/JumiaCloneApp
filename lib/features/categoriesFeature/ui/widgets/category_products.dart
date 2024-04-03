import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import 'category_details.dart';

class CategoryProducts extends StatelessWidget {
  CategoryProducts(
      {super.key,
      required this.pagesCount,
      required this.appColors,
      required this.index
      });

  // final PageController pageController;
  final int pagesCount;
  final AppColors appColors;
  final double index;

  final List<String> saleImages1 = [
    'assets/images/supermarket/3.png',
    'assets/images/supermarket/6.png',
    'assets/images/HomeSale/3.png',
    'assets/images/HomeSale/4.png',
    'assets/images/HomeSale/5.png',
    'assets/images/HomeSale/6.png',
  ];
  final List<String> titles = ['Juices', 'Coffee' 'Tea ',' Cocoa',' Cocoa',' Cocoa'];

  @override
  Widget build(BuildContext context) {
    return CategoryDetails(
      appColors: appColors,
      saleImages1: saleImages1,
      titles: titles,
      // index: pageController.page??0,
      index: index,
    );
  }
}
