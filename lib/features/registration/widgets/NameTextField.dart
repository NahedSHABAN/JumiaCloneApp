import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';

class NameTextField extends StatefulWidget {
  const NameTextField(
      {Key? key, required this.label, required this.onValueChanged})
      : super(key: key);

  final String label;
  final void Function(String) onValueChanged;

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  30.0 , vertical: 20),
      child: TextFormField(
        onChanged: (value) {
          setState(() {
            widget.onValueChanged(
                value); // Notify the parent widget about the value change
          });
        },
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
