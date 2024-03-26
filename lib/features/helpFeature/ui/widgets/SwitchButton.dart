import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({
    super.key,
    required this.title
  });

  final String title;

  @override
  State<SwitchButton> createState() => _AboutButtonState();
}

class _AboutButtonState extends State<SwitchButton> {
  bool isSwitched=false;
  final AppColors appColors = const AppColors();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 10.h,
              child: Switch(
                inactiveTrackColor: AppColors.grey,
                inactiveThumbColor: appColors.secondColor,
                activeColor: AppColors.appBarActive,
                  value: isSwitched,
                  onChanged: (value){
                setState(() {
                  isSwitched=value;
                });
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }
}
