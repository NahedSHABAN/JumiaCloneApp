import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';

class BirthDateField extends StatefulWidget {
  const BirthDateField({
    Key? key,
    required this.label,
    required this.onDateChanged,
  }) : super(key: key);

  final String label;
  final void Function(DateTime) onDateChanged;

  @override
  State<BirthDateField> createState() => _BirthDateFieldState();
}

class _BirthDateFieldState extends State<BirthDateField> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    // Initialize selected date to today's date
    selectedDate = DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        widget.onDateChanged(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: GestureDetector(
        onTap: () => _selectDate(context),
        child: AbsorbPointer(
          child: TextFormField(
            readOnly: true,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              focusColor: AppColors.appBarActive,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.appBarActive),
              ),
              labelText: widget.label,
              floatingLabelStyle: TextStyle(color: AppColors.appBarActive),
              labelStyle: TextStyle(fontSize: 15.sp),
              suffixIcon: Icon(Icons.calendar_today),
            ),
            controller: TextEditingController(
              text: '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
            ),
          ),
        ),
      ),
    );
  }
}
