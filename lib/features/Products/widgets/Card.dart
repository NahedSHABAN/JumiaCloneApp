import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/Products/widgets/Rating.dart';
import '../../../../core/utils/constants/app_colors.dart';
import 'AddButton.dart';
import 'Badge1.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.appColors,
    required this.rating,
  }) : super(key: key);

  final String productName;
  final String productPrice;
  final String productImage;
  final AppColors appColors;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: appColors.secondColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  productImage,
                  height: 120.h,
                  width: double.infinity,
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: Badge1(title: 'Non-Returnable'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(
                  left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      fontSize: 10,
                      color: appColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'EGP $productPrice',
                    style: TextStyle(
                      fontSize: 15,
                      color: appColors.black,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Rating(rating: rating),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(child: AddButton()),
          ],
        ),
      ),
    );
  }
}
