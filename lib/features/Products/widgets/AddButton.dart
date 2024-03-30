import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(appColors.saleText),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: Text(
            'ADD TO CART',
            style: TextStyle(color: appColors.secondColor),
          ),
        ),
      ),
    );
  }
}
