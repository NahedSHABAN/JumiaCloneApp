import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountButtonImage extends StatelessWidget {
  const AccountButtonImage({
    super.key,
    required this.icon,
    required this.title
  });

  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: MaterialButton(
        onPressed:(){},
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 20.w,
              height: 20.h,
            ),
            25.horizontalSpace,
            Text(
              title,
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
      ),
    );
  }
}
