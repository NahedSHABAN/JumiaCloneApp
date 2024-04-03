import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';
import 'package:jumia/features/productDetailsFeature/ui/widgets/product_rating_container.dart';
import 'widgets/app_bar_actions.dart';
import 'widgets/app_bar_leading.dart';
import 'widgets/app_bar_title.dart';
import 'widgets/custom_botton_nav_bar.dart';
import 'widgets/customer_view.dart';
import 'widgets/delivery_section.dart';
import 'widgets/details_section.dart';
import 'widgets/product_s;ider.dart';
import 'widgets/promotion_section.dart';


class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  static const appColors = AppColors();
  List<String> images = [
    'assets/images/Products/prod1.jpg',
    'assets/images/Products/prod2.jpg',
    'assets/images/Products/prod3.jpg',
    'assets/images/Products/prod4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appColors.primaryColor,
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          actions: const [
            AppBarActions(appColors: appColors),
          ],
          title: const AppBarTitle(appColors: appColors),
          leading: const AppBarLeading(appColors: appColors),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProductSlider1(
                imagePaths: images,
                containerColor: appColors.primaryColor,
                space: 5,
              ),
              8.verticalSpace,
              const DetailsSection(appColors: appColors),
              8.verticalSpace,
              const PromotionsSection(
                  appColors:AppColors()
              ),
              8.verticalSpace,
              const DeliverySection(
                appColors: AppColors(),
              ),
              8.verticalSpace,
              const CustomerVeiw(
                  appColors: appColors,
                title: 'Customers also viewed',
                bottonTitle: '',
              ),
              8.verticalSpace,
              const ProductRatingContainer(appColors: appColors),
              8.verticalSpace,
              const CustomerVeiw(
                  appColors: appColors,
                title: 'You may also like',
                bottonTitle: '',
              ),
              8.verticalSpace,
              const CustomerVeiw(
                appColors: appColors,
                title: 'Recently Viewed',
                bottonTitle: 'SEE ALL',
              ),
              8.verticalSpace
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar());
  }
}




