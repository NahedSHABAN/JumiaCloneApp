import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String>items=['Giza','Minya','Asyut','Cairo'];
  String? selectedItem='Giza';
  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 5.h,
      ),
      child: SizedBox(
        width: 300.w,
        child: DropdownButtonFormField<String>(
          dropdownColor: appColors.secondColor,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                // width: 1.w,
                color: AppColors.appBarColor,
              ),
            ),
            // Ensure the border persists even after selection
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                width: 1.w,
                color: AppColors.appBarColor,
              ),
            ),
            // Add padding to the input decoration
            contentPadding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 12,
            ),
          ),
          style: TextStyle(fontSize: 15.sp, color: Colors.black),
          itemHeight: 50,
          value: selectedItem,
          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  item,
                  style: TextStyle(fontSize: 17.sp),
                ),
              ),
            );
          }).toList(),
          onChanged: (item) {
            setState(() {
              selectedItem = item;
            });
          },
        ),
      ),
    )
    ;
  }
}
