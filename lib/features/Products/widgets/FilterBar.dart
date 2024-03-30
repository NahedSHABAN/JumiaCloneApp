import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({Key? key}) : super(key: key);
  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.white,
          height: 1,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.appBarColor,
          ),
          child: Container(
            height: 56,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.view_list),
                  color: appColors.secondColor,
                ),
                VerticalDivider(
                  color: Colors.white,
                  width: 1,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Popularity',
                    style: TextStyle(color: appColors.secondColor),
                  ),
                ),
                VerticalDivider(
                  color: Colors.white,
                  width: 1,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Filters',
                    style: TextStyle(color: appColors.secondColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
