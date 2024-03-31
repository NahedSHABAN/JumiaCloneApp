import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberTextField extends StatefulWidget {
  const PhoneNumberTextField({
    Key? key,
    required this.label,
    required this.onValueChanged,
  }) : super(key: key);

  final String label;
  final void Function(String) onValueChanged;

  @override
  State<PhoneNumberTextField> createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  String? initialCountry = 'EG'; // Initial country code
  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: InternationalPhoneNumberInput(
        onInputChanged: (PhoneNumber number) {
          setState(() {
            phoneNumber = number.phoneNumber; // Update phone number
          });
          widget.onValueChanged(phoneNumber!); // Notify parent widget
        },
        inputDecoration: InputDecoration(
          labelText: widget.label,
          border: OutlineInputBorder(),
          focusColor: AppColors.appBarActive,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.appBarActive),
          ),
          floatingLabelStyle: TextStyle(color: AppColors.appBarActive),
          labelStyle: TextStyle(fontSize: 15.sp),
        ),
        selectorConfig: SelectorConfig(
          selectorType: PhoneInputSelectorType.DROPDOWN,
        ),
        onInputValidated: (bool value) {
          // You can perform additional validation here if needed
        },
        selectorTextStyle: TextStyle(color: Colors.black),
        initialValue: PhoneNumber(isoCode: initialCountry),
        formatInput: false,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: AppColors.appBarActive,
      ),
    );
  }
}
