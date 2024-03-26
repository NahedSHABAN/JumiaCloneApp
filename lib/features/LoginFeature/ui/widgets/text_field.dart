import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    required this.label
  });

  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextFormField(
        cursorColor: AppColors.appBarActive,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          focusColor: AppColors.appBarActive,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.appBarActive
            ),
          ),
          labelText: label,
          floatingLabelStyle: TextStyle(
              color: AppColors.appBarActive
          ),
          labelStyle: TextStyle(
              fontSize: 15.sp
          ),

        ),

      ),
    );
  }
}
