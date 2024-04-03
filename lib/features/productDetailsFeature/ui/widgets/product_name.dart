import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    super.key,
    required this.title
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 15.sp
      ),
    );
  }
}
