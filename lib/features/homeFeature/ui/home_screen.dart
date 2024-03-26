import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/homeFeature/ui/widgets/Shop_all_images.dart';
import 'package:jumia/features/homeFeature/ui/widgets/category_slider.dart';
import 'package:jumia/features/homeFeature/ui/widgets/center_banner.dart';
import 'package:jumia/features/homeFeature/ui/widgets/center_products.dart';
import 'package:jumia/features/homeFeature/ui/widgets/flash_sale_banner.dart';
import 'package:jumia/features/homeFeature/ui/widgets/products_slider.dart';
import 'package:jumia/features/homeFeature/ui/widgets/sale_ctegory.dart';
import 'package:jumia/features/homeFeature/ui/widgets/banner.dart';
import 'package:jumia/features/homeFeature/ui/widgets/center_image.dart';
import 'package:jumia/features/homeFeature/ui/widgets/center_slider.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/home_screen_consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myCurrentIndex = 0;
  static const appColors = AppColors();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SaleSection(appColors: appColors),
            SaleCategory(
              appColors: const AppColors(),
              images: saleImages2,
            ),
            CenterBanner(
              colors: const AppColors(),
              title: 'Shop all Your Needs',
              color: appColors.bannerColor,
            ),
            const ShopAllImages(
              appColors: appColors,
              image1: 'assets/images/ShopAllYouNeed/1.png',
              image2: 'assets/images/ShopAllYouNeed/2.png',
            ),
            const ShopAllImages(
              appColors: appColors,
              image1: 'assets/images/ShopAllYouNeed/3.png',
              image2: 'assets/images/ShopAllYouNeed/4.png',
            ),
            CenterImage(
              appColors: const AppColors(),
              image: 'assets/images/HomeCenter/4.jpg',
              color: appColors.secondColor,
            ),
            const FlashSaleBanner(
              appColors: AppColors(),
              hours: 9,
              minutes: 45,
              seconds: 55,
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
            CenterBanner(
              colors: const AppColors(),
              title: 'Proudly Made In Egypt',
              color: appColors.madeInEgypt,
              postfix_icon: 'assets/images/Icons/heart.png',
              Suffix_icon: 'assets/images/Icons/heart.png',

              // postfix_icon: ,
            ),
            CenterImage(
              appColors: const AppColors(),
              image: 'assets/images/HomeCenter/3.jpg',
              color: appColors.secondColor,
            ),
            CategoryBanner(
              titleColor: appColors.black,
              colors: const AppColors(),
              title: 'Continue Your Search',
              color: appColors.secondColor,
              bottonTitle: 'SEE ALL',
              bottonColor: AppColors.appBarActive,
            ),
            CenterProducts(
              appColors: const AppColors(),
              image1: 'assets/images/Products/3.jpg',
              image2: 'assets/images/Products/4.jpg',
              product1Details: product1,
              product2Details: product2,
            ),
            CenterProducts(
              appColors: const AppColors(),
              image1: 'assets/images/Products/3.jpg',
              image2: 'assets/images/Products/4.jpg',
              product1Details: product1,
              product2Details: product2,
            ),
            7.verticalSpace,
            CenterBanner(
              colors: const AppColors(),
              title: 'Best Fashion Offers',
              color: appColors.bannerColor,
            ),
            SaleCategory(
              appColors: const AppColors(),
              images: homeSale2,
            ),
            CenterBanner(
              colors: const AppColors(),
              title: 'Best Kitchen & Appliances Offers',
              color: appColors.bannerColor,
            ),
            SaleCategory(
              appColors: const AppColors(),
              images: kitchen,
            ),
            CategoryBanner(
              titleColor: appColors.black,
              colors: const AppColors(),
              title: 'Top Selling For This Week',
              color: appColors.bannerColor,
              bottonTitle: 'SEE ALL',
              bottonColor: appColors.black,
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
            CenterBanner(
              colors: const AppColors(),
              title: 'Best Beauty Offers',
              color: appColors.bannerColor,
            ),
            SaleCategory(
              appColors: const AppColors(),
              images: beauty,
            ),
            CenterBanner(
              colors: const AppColors(),
              title: 'Best Beauty Offers',
              color: appColors.bannerColor,
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
            CenterImage(
                appColors: const AppColors(),
                image: 'assets/images/HomeCenter/5.png',
                color: appColors.secondColor),
            CenterBanner(
              colors: const AppColors(),
              title: 'Best Electronics Offers',
              color: appColors.bannerColor,
            ),
            SaleCategory(
              appColors: const AppColors(),
              images: elctronics,
            ),
            CategoryBanner(
              titleColor: appColors.black,
              colors: const AppColors(),
              title: 'Top Selling For This Week',
              color: appColors.bannerColor,
              bottonTitle: 'SEE ALL',
              bottonColor: appColors.black,
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
            CenterBanner(
              colors: const AppColors(),
              title: 'Discover Our Latest Collections',
              color: appColors.bannerColor,
            ),
            const ShopAllImages(
              appColors: appColors,
              image1: 'assets/images/ShopAllYouNeed/5.png',
              image2: 'assets/images/ShopAllYouNeed/6.png',
            ),
            CenterBanner(
              colors: const AppColors(),
              title: 'Official Stores',
              color: appColors.bannerColor,
            ),
            CategorySlider(
              images: beautySlider,
              appColors: appColors,
            ),
            CenterBanner(
              colors: const AppColors(),
              title: 'More To Explore!',
              color: appColors.blue,
            ),
            CarouselContainer(
              imagePaths: saleImages3,
              containerColor: appColors.secondColor,
              space: 7.w,
            ),
            CategoryBanner(
              titleColor: appColors.black,
              colors: const AppColors(),
              title: 'L\'Oreal',
              color: appColors.bannerColor,
              bottonTitle: 'SEE ALL',
              bottonColor: appColors.black,
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
            CategoryBanner(
                titleColor: AppColors.grey,
                title: 'TOP SELLING ITEMS',
                bottonTitle: 'SEE ALL',
                color: appColors.primaryColor,
                bottonColor: AppColors.appBarActive,
                colors: AppColors())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: appColors.secondColor, // Set background color of FAB
        foregroundColor: appColors.black, // Set icon color of FAB
        elevation: 4, // Add light shadow
        shape: const CircleBorder(),
        child: const Icon(Icons.arrow_upward_sharp), // Make it circular
      ),
    );
  }
}

class SaleSection extends StatelessWidget {
  const SaleSection({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategorySlider(
          images: homeSlider,
          appColors: appColors,
        ),
        CarouselContainer(
          space: 7.w,
          imagePaths: homeSlider2,
          containerColor: appColors.secondColor,
        ),
        CategorySlider(
          images: homeSlider1,
          appColors: appColors,
        ),
        CenterImage(
          appColors: const AppColors(),
          image: 'assets/images/HomeCenter/2.png',
          color: appColors.secondColor,
        ),
        SaleCategory(
          appColors: const AppColors(),
          images: saleImages1,
        ),
        CategoryBanner(
          colors: const AppColors(),
          title: 'L\'Oreal',
          color: appColors.bannerColor,
          bottonTitle: 'SEE ALL',
          bottonColor: appColors.black,
          titleColor: appColors.black,
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
        CenterBanner(
          colors: const AppColors(),
          title: 'Ramadan Preparations',
          postfix_icon: 'assets/images/thin-moon.png',
          color: appColors.bannerColor,
        ),
      ],
    );
  }
}
