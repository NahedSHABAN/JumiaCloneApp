import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/productDetailsFeature/ui/widgets/product_name.dart';
import 'package:jumia/features/productDetailsFeature/ui/widgets/product_price.dart';
import 'package:jumia/features/productDetailsFeature/ui/widgets/rating_section.dart';

import '../../../../core/utils/constants/app_colors.dart';
import 'brand_name.dart';
import 'left_units.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: appColors.secondColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductName(
              title:
              'LOreal Paris Infallible Matte Les Chocolats Scented Liquid Lipstick - 864 Tasty Ruby',
            ),
            5.verticalSpace,
            const BrandName(
              title:
              'LOreal Paris | Similar products from LOreal Paris',
            ),
            5.verticalSpace,
            const ProductPrice(
              price: '294.00',
            ),
            5.verticalSpace,
            const LeftUnits(appColors: AppColors(), units: '6'),
            5.verticalSpace,
            const Text(
              'Delivery fees from EGP 20.00 to 6th of october. Save 10 EGP on shipping with prepaid payment',
            ),
            10.verticalSpace,
            RatingSection(appColors: appColors),
            


          ],
        ),
      ),
    );
  }
}
