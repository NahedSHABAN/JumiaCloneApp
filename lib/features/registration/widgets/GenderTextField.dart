import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/constants/app_colors.dart';

enum Gender { male, female }

class GenderDropdown extends StatefulWidget {
  const GenderDropdown({Key? key, required this.onGenderChanged}) : super(key: key);

  final void Function(Gender) onGenderChanged;

  @override
  State<GenderDropdown> createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  Gender? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: DropdownButtonFormField<Gender>(
        value: _selectedGender,
        onChanged: (newValue) {
          setState(() {
            _selectedGender = newValue;
            widget.onGenderChanged(newValue!);
          });
        },
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: 'Gender',
          floatingLabelStyle: TextStyle(color: AppColors.appBarActive),
          labelStyle: TextStyle(fontSize: 15.sp),
        ),
        items: Gender.values.map((gender) {
          String genderText = '';
          switch (gender) {
            case Gender.male:
              genderText = 'Male';
              break;
            case Gender.female:
              genderText = 'Female';
              break;
          }
          return DropdownMenuItem<Gender>(
            value: gender,
            child: Text(genderText),
          );
        }).toList(),
      ),
    );
  }
}
