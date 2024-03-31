import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/utils/constants/app_colors.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    Key? key,
    required this.label,
    required this.onValueChanged,
    this.enabled = true,
  }) : super(key: key);

  final String label;
  final void Function(String) onValueChanged;
  final bool enabled; // Add enabled property

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  late String password; // Initialize password with an empty string

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  30.0),
      child: TextFormField(
        obscureText: true, // Set obscureText to true for password field
        onChanged: (value) {
          setState(() {
            password = value; // Assign the value of the text field to password
            widget.onValueChanged(
                value); // Notify the parent widget about the value change
          });
        },
        enabled: widget.enabled, // Set enabled property of TextFormField
        cursorColor: AppColors.appBarActive,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          focusColor: AppColors.appBarActive,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.appBarActive),
          ),
          labelText: widget.label,
          floatingLabelStyle: TextStyle(color: AppColors.appBarActive),
          labelStyle: TextStyle(fontSize: 15.sp),
        ),
      ),
    );
  }
}
