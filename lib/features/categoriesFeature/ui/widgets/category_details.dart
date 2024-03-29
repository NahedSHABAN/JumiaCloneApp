import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/Products/Products.dart';

import '../../../../core/utils/constants/app_colors.dart';
import 'all_products_banner.dart';
import 'category_container.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({
    Key? key,
    required this.appColors,
    required this.saleImages1,
    required this.titles,
    required this.index,
  }) : super(key: key);

  final AppColors appColors;
  final List<String> saleImages1;
  final List<String> titles;
  final double index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        color: appColors.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AllProductsBanner(
              appColors: appColors,
              onTap: () {},
            ),
            const SizedBox(height: 10),
            index == 0
                ? ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Navigate to the other component
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Products();
                            }),
                          );
                        },
                        child: CategoryContainer(
                          appColors: appColors,
                          saleImages1: saleImages1,
                          titles: titles,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: 2,
                    shrinkWrap: true,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}