import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JumiaLogo extends StatelessWidget {
  const JumiaLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/Icons/jumia-logo.png',
      height: 50.h,
      width: 100.w,
    );
  }
}
