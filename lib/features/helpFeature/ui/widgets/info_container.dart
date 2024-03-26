import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';
import 'SecondSettingsButton.dart';
import 'info_button.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 110.h,
        decoration: BoxDecoration(
            color: appColors.secondColor,
            borderRadius: BorderRadius.circular(7)
        ),
        child:  Column(
          children: [
            InfoButton(
              title: 'App Version 14.12.0',
              title2: 'Up To Date',
              onPressed: (){},
            ),
            SecondSettingsButton(
              title: 'Cashe Used: 0 B',
              title2: 'Clear',
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
