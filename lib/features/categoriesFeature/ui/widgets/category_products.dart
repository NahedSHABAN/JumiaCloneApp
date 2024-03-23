import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';
import 'all_products_banner.dart';
import 'all_products_container.dart';
import 'category_container.dart';

class CategoryProducts extends StatelessWidget {
   CategoryProducts({
    Key? key,
    required PageController pageController,
    required this.pagesCount,
    required this.appColors,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;
  final int pagesCount;
  final AppColors appColors;

  final List<String> saleImages1 = [
    'assets/images/supermarket/3.png',
    'assets/images/supermarket/6.png',
    // 'assets/images/HomeSale/3.png',
    // 'assets/images/HomeSale/4.png',
    // 'assets/images/HomeSale/5.png',
    // 'assets/images/HomeSale/6.png',
  ];
   final List<String> titles=[
     'Juices',
     'Coffee, Tea & Cocoa'
   ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: pagesCount,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            color: appColors.primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AllProductsBanner(
                  appColors: appColors,
                ),
                10.verticalSpace,
                CategoryContainer(appColors: appColors, saleImages1: saleImages1, titles: titles),
                10.verticalSpace,
                CategoryContainer(appColors: appColors, saleImages1: saleImages1, titles: titles),

              ],
            ),
          ),
        );
      },
    );
  }
}



