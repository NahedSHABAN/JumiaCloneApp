import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/homeFeature/ui/widgets/sale_card.dart';

import '../../../../core/utils/constants/app_colors.dart';

class CenterProducts extends StatelessWidget {
  const CenterProducts({
    super.key,
    required this.appColors,
    required this.image1,
    required this.image2,
    required this.product1Details,
    required this.product2Details,
  });

  final AppColors appColors;
  final String image1;
  final String image2;
  final ProductDetails product1Details;
  final ProductDetails product2Details;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          width: double.infinity,
          color: appColors.secondColor,
          height: 170.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Sale_Card(
                  productSale: product1Details.sale,
                  productImage: product1Details.image,
                  productPrice: product1Details.price,
                  productName: product1Details.name,
                  appColors: appColors,
                ),
              ),
              SizedBox(width: 10.w), // Adjust the spacing as needed
              Expanded(
                flex: 1,
                child: Sale_Card(
                  productSale: product2Details.sale,
                  productImage: product2Details.image,
                  productPrice: product2Details.price,
                  productName: product2Details.name,
                  appColors: appColors,
                ),
              ),
            ],
          ),
        ),
      ],
    );

  }
}

class ProductDetails {
  final String sale;
  final String image;
  final String price;
  final String name;

  ProductDetails({
    required this.sale,
    required this.image,
    required this.price,
    required this.name,
  });
}
