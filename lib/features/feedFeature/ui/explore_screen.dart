import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';
import 'package:jumia/features/feedFeature/ui/widgets/new_product_container.dart';
import 'package:jumia/features/feedFeature/ui/widgets/share_product_container.dart';
import 'package:jumia/features/feedFeature/ui/widgets/slider_product_container.dart';

class EXPLORE extends StatefulWidget {
  const EXPLORE({super.key});

  @override
  State<EXPLORE> createState() => _FollowingState();
}

class _FollowingState extends State<EXPLORE> {
  static const appColors = AppColors();
  final List<String> homeSlider2 = [
    'assets/images/HomeSlider2/1.png',
    'assets/images/HomeSlider2/2.png',
    'assets/images/HomeSlider2/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appColors.primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              15.verticalSpace,
              NewProductContainer(
                appColors: const AppColors(),
                image1: 'assets/images/Products/3.jpg',
                image2: 'assets/images/Products/5.jpg',
                image3: 'assets/images/Products/8.jpg',
                onTap: () {},
              ),
              10.verticalSpace,
              NewProductContainer(
                appColors: const AppColors(),
                image1: 'assets/images/Products/3.jpg',
                image2: 'assets/images/Products/5.jpg',
                image3: 'assets/images/Products/8.jpg',
                onTap: () {},
              ),
              10.verticalSpace,
              const ShareProductContainer(
                image: 'assets/images/HomeCenter/2.png',
                subTitle: 'Get you new TV from Here',
                header: 'New Tv?',
              ),
              10.verticalSpace,
              NewProductContainer(
                appColors: const AppColors(),
                image1: 'assets/images/Products/3.jpg',
                image2: 'assets/images/Products/5.jpg',
                image3: 'assets/images/Products/8.jpg',
                onTap: () {},
              ),
              10.verticalSpace,
              SliderProductContainer(
                header: 'High Quality Adjustable Bag For ELF Fashion',
                subTitle:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                images: homeSlider2,
              ),
              10.verticalSpace,
              const ShareProductContainer(
                image: 'assets/images/HomeCenter/2.png',
                subTitle: 'Get you new TV from Here',
                header: 'New Tv?',
              ),
              10.verticalSpace,
              NewProductContainer(
                appColors: const AppColors(),
                image1: 'assets/images/Products/3.jpg',
                image2: 'assets/images/Products/5.jpg',
                image3: 'assets/images/Products/8.jpg',
                onTap: () {},
              ),
              10.verticalSpace,
              SliderProductContainer(
                header: 'High Quality Adjustable Bag For ELF Fashion',
                subTitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                images: homeSlider2,
              ),
              10.verticalSpace,
              const ShareProductContainer(
                image: 'assets/images/HomeCenter/2.png',
                subTitle: 'Get you new TV from Here',
                header: 'New Tv?',
              ),
              10.verticalSpace,
            ],
          ),
        ));
  }
}
