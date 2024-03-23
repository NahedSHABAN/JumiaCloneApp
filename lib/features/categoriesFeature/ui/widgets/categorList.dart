import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class CategoryList extends StatelessWidget {
  final int selectedIndex;
  final int pagesCount;
  final List<String> categoryNames; // List of category names
  final Function(int) onCategorySelected;

  const CategoryList({
    required this.selectedIndex,
    required this.pagesCount,
    required this.categoryNames, // Receive list of category names
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 5.h);
        },
        itemCount: pagesCount,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              onCategorySelected(index);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(microseconds: 200),
                  child: Container(
                    height: (selectedIndex == index) ? 60.h : 0.h,
                    width: 5.w,
                    color: AppColors.appBarActive,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60.h,
                    color: (selectedIndex == index)
                        ? const AppColors().primaryColor
                        : const AppColors().secondColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 0.h,
                        horizontal: 2.w,
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          // Use the name corresponding to the current index
                          categoryNames[index],
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
