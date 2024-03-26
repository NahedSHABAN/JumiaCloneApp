import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({
    super.key,
    required this.title
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: MaterialButton(
        onPressed:(){},
        child: Row(
          children: [

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
