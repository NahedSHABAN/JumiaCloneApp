// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';
import 'widgets/FilterBar.dart';
import 'widgets/card.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);
  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'name': 'Product 1',
        'image': 'assets/images/Products/1.jpg',
        'price': '19.99',
        'rating': 5,
      },
      {
        'name': 'Product 2',
        'image': 'assets/images/Products/2.jpg',
        'price': '29.99',
        'rating': 4,
      },
      {
        'name': 'Product 2',
        'image': 'assets/images/Products/3.jpg',
        'price': '29.99',
        'rating': 3.2,
      },
      {
        'name':
            'Product 2',
        'image': 'assets/images/Products/4.jpg',
        'price': '29.99',
        'rating': 3.2,
      },
      {
        'name': 'Product 2',
        'image': 'assets/images/Products/5.jpg',
        'price': '29.99',
        'rating': 3.2,
      },
      {
        'name': 'Product 2',
        'image': 'assets/images/Products/7.jpg',
        'price': '29.99',
        'rating': 3.2,
      },
      {
        'name': 'Product 2',
        'image': 'assets/images/Products/8.jpg',
        'price': '29.99',
        'rating': 4,
      },
      {
        'name': 'Product 2',
        'image': 'assets/images/Products/9.jpg',
        'price': '29.99',
        'rating': 4,
      },
      {
        'name': 'Product 33',
        'image': 'assets/images/supermarket/10.png',
        'price': '29.99',
        'rating': 4,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Juices',
          style: TextStyle(color: appColors.secondColor),
        ),
        backgroundColor: AppColors.appBarColor,
        iconTheme: IconThemeData(color: appColors.secondColor),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: appColors.secondColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: appColors.secondColor,
          ),
        ],
      ),
      body: Column(
        children: [
          FilterBar(),
          Expanded(
            child: Container(
              color: appColors.primaryColor,
              child: SingleChildScrollView(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    final product = products[index];
                    return ProductCard(
                      productImage: product['image'],
                      productPrice: product['price'],
                      productName: product['name'],
                      rating: product['rating'],
                      appColors: appColors,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
