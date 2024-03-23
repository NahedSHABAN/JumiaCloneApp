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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myCurrentIndex = 0;
  static const appColors = AppColors();

  final List<String> homeSlider2 = [
    'assets/images/HomeSlider2/1.png',
    'assets/images/HomeSlider2/2.png',
    'assets/images/HomeSlider2/3.jpg',
    'assets/images/HomeSlider2/4.gif',
    'assets/images/HomeSlider2/5.jpg',
    'assets/images/HomeSlider2/6.gif',
    'assets/images/HomeSlider2/7.png',
    'assets/images/HomeSlider2/8.png'
  ];
  final List<String> homeSlider1 = [
    'assets/images/HomeSlider3/1.gif',
    'assets/images/HomeSlider3/2.png',
    'assets/images/HomeSlider3/3.png',
    'assets/images/HomeSlider3/4.png',
    'assets/images/HomeSlider3/5.gif',
    'assets/images/HomeSlider3/6.png',
    'assets/images/HomeSlider3/7.png',
    'assets/images/HomeSlider3/8.png',
    'assets/images/HomeSlider3/9.png',
    'assets/images/HomeSlider3/10.png',
  ];
  final List<String> saleImages1 = [
    'assets/images/HomeSale/1.png',
    'assets/images/HomeSale/2.png',
    'assets/images/HomeSale/3.png',
    'assets/images/HomeSale/4.png',
    'assets/images/HomeSale/5.png',
    'assets/images/HomeSale/6.png',
  ];
  final List<String> saleImages2 = [
    'assets/images/RamadanSale/1.jpg',
    'assets/images/RamadanSale/2.png',
    'assets/images/RamadanSale/3.png',
    'assets/images/RamadanSale/4.png',
    'assets/images/RamadanSale/5.png',
    'assets/images/RamadanSale/6.gif',
  ];
  final List<String> homeSale2 = [
    'assets/images/HomeSale2/1.jpg',
    'assets/images/HomeSale2/2.jpg',
    'assets/images/HomeSale2/3.jpg',
  ];
  final List<String> kitchen = [
    'assets/images/Kitchen/1.jpg',
    'assets/images/Kitchen/2.jpg',
    'assets/images/Kitchen/3.png',
    'assets/images/Kitchen/4.png',
    'assets/images/Kitchen/5.jpg',
    'assets/images/Kitchen/6.png',
  ];
  final List<String> beauty = [
    'assets/images/beauty/Adidas.jpg',
    'assets/images/beauty/1.jpg',
    'assets/images/beauty/2.png',
  ];
  final List<String> beautySlider = [
    'assets/images/beauty/Adidas.jpg',
    'assets/images/beauty/1.jpg',
    'assets/images/beauty/2.png',
    'assets/images/beauty/3.jpg',
    'assets/images/beauty/5.jpg',
    'assets/images/beauty/10.jpg',
    'assets/images/beauty/11.jpg',
    'assets/images/beauty/14.jpg',
    'assets/images/beauty/AEO.jpg',
  ];
  final List<String> elctronics = [
    'assets/images/Electronics/1.png',
    'assets/images/Electronics/2.png',
    'assets/images/Electronics/3.png',
    'assets/images/Electronics/4.png',
    'assets/images/Electronics/5.jpg',
    'assets/images/Electronics/6.png',
  ];
  final List<String> saleImages3 = [
    'assets/images/HomeCenter/6.png',
    'assets/images/HomeCenter/7.png',
    'assets/images/HomeCenter/8.png',
  ];
  final List<String> homeSlider = [
    'assets/images/homeSlider/2.png',
    'assets/images/homeSlider/FlashSaleEN.png',
    'assets/images/homeSlider/INSEN.png',
    'assets/images/homeSlider/MIEEN.png',
    'assets/images/homeSlider/RedeemEN.png',
    'assets/images/homeSlider/TodayEN.png',
  ];
  ProductDetails product1 = ProductDetails(
    sale: '50% off',
    image: 'assets/images/Products/9.jpg',
    price: '50.0',
    name: 'Product 1',
  );
  ProductDetails product2 = ProductDetails(
    sale: '30% off',
    image: 'assets/images/Products/10.jpg',
    price: '30.0',
    name: 'Product 2',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
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
