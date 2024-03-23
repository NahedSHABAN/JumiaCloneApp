import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';
import 'all_products_container.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
    required this.appColors,
    required this.saleImages1,
    required this.titles,
  });

  final AppColors appColors;
  final List<String> saleImages1;
  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appColors.secondColor,
        borderRadius: BorderRadiusDirectional.horizontal(
          start: Radius.circular(7),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text('BEVERAGES'),
                Spacer(),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'SEE ALL',
                    style: TextStyle(
                      color: AppColors.appBarActive,
                      fontSize: 10.sp,
                    ),
                  ),
                )
              ],
            ),
            AllProductsContainer(
              images: saleImages1,
              titles: titles,
            )
          ],
        ),
      ),
    );
  }
}
