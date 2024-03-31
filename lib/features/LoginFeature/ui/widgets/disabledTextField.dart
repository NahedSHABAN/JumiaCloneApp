import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/utils/constants/app_colors.dart';

class DisabledTextField extends StatefulWidget {
  const DisabledTextField(
      {Key? key,
      required this.label,
      required this.onValueChanged,
      this.enabled = false}) 
      : super(key: key);

  final String label;
  final void Function(String) onValueChanged;
  final bool enabled; // Add enabled property

  @override
  State<DisabledTextField> createState() => _DisabledTextFieldState();
}

class _DisabledTextFieldState extends State<DisabledTextField> {
  late String email; // Initialize email with an empty string

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextFormField(
        onChanged: (value) {
          setState(() {
            email = value; // Assign the value of the text field to email
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
