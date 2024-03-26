import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({
    super.key,
    required this.icon,
    required this.title
  });

  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: MaterialButton(
        onPressed:(){},
        child: Row(
          children: [
            Icon(icon,size: 22.sp,),
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
