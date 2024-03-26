import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';
import 'SecondSettingsButton.dart';
import 'SwitchButton.dart';

class Settings_Container extends StatelessWidget {
  const Settings_Container({
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
        height: 150.h,
        decoration: BoxDecoration(
            color: appColors.secondColor,
            borderRadius: BorderRadius.circular(7)
        ),
        child:  Column(
          children: [
            const SwitchButton(
              title: 'Push Notification',
            ),

            SecondSettingsButton(
              title: 'Country',
              title2: 'Egypt',
              onPressed: (){},
            ),
            SecondSettingsButton(
              title: 'Language',
              title2: 'English',
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
