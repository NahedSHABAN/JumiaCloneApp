import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';

class ShoppingButton extends StatelessWidget {
  const ShoppingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = AppColors();

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 , vertical:15),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(appColors.saleText),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Text(
              'START SHOPPING',
              style: TextStyle(color: appColors.secondColor),
            ),
          ),
        ),
      ),
    );
  }
}
