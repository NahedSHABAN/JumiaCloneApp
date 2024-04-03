import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
    required this.price
  });
final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'EGP ',
          style: TextStyle(
              fontSize: 23.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        Text(
          price,
          style: TextStyle(
              fontSize: 23.sp,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
