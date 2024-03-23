import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/categoriesFeature/ui/widgets/all_products_banner.dart';
import 'package:jumia/features/categoriesFeature/ui/widgets/categorList.dart';
import 'package:jumia/features/categoriesFeature/ui/widgets/category_products.dart';

import '../../../core/utils/constants/app_colors.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  static const appColors = AppColors();
  int selectedIndex = 0;
  int pagesCount = 20;
  List<String> categories =[
    'Supermarket',
    'Fashion',
    'Health & Beauty',
    'Baby Products',
    'Phones & Tablets',
    'Home & Furniture',
    'Appliances',
    'Televisions & Audio',
    'Computing',
    'Sporting Goods',
    'Gaming',
    'Other categories',

  ];
  final List<String> saleImages1 = [
    'assets/images/HomeSale/1.png',
    'assets/images/HomeSale/2.png',
    'assets/images/HomeSale/3.png',
    'assets/images/HomeSale/4.png',
    'assets/images/HomeSale/5.png',
    'assets/images/HomeSale/6.png',
  ];

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          CategoryList(
            categoryNames:categories ,
            selectedIndex: selectedIndex,
            pagesCount:categories.length ,
            onCategorySelected: (index) {
              setState(() {
                selectedIndex = index;
                _pageController.jumpToPage(index);
              });
            },
          ),
          Expanded(
            child: Container(
              color: appColors.primaryColor,
              child: CategoryProducts(
                  pageController: _pageController,
                  pagesCount: pagesCount,
                  appColors: appColors,
              ),
            ),
          )
        ],
      ),
    );
  }
}


