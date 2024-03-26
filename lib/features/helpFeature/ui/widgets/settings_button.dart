import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Row(
        children: [
          10.horizontalSpace,
          Text(
            title,
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
    );
  }
}
