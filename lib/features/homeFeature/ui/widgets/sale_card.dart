import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class Sale_Card extends StatelessWidget {
  const Sale_Card({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productSale,
    required this.appColors,
  });

  final AppColors appColors;
  final String productName;
  final String productPrice;
  final String productImage;
  final String productSale;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appColors.secondColor,
      height: 167.h,
      width: 145.w,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Image.asset(
                  productImage,
                  height: 120.h,
                  width: 140.w,
                ),
                Container(
                  color: appColors.saleColor,
                  height: 20.h,
                  width: 40.w,
                  child: Center(
                    child: Text(
                      '-$productSale%',
                      style: TextStyle(
                        color: appColors.saleText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
             Column(
              children: [
                Text(
                  productName,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  productPrice,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}