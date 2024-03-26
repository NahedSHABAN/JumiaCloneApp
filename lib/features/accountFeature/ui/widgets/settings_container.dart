import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';


class SettingsContainer extends StatelessWidget {
  const SettingsContainer({
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
        height: 40.h,
        decoration: BoxDecoration(
            color: appColors.secondColor,
            borderRadius: BorderRadius.circular(7)
        ),
        child:  Column(
          children: [
            MaterialButton(
              child: Row(
                children: [
                  10.horizontalSpace,
                  Text(
                    'Address Book',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                  const Spacer(),
                  Icon(Icons.arrow_forward_ios,
                    size: 12.sp,
                  ),

                ],
              ),
              onPressed: (){},
            ),

          ],
        ),
      ),
    );
  }
}
