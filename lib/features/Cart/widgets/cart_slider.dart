import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/home_screen_consts.dart';
import 'SliderImage.dart';
import '../../../core/utils/constants/app_colors.dart';

class CartSlider extends StatelessWidget {
  final String title;
  final List<String> images;
  final Color backgroundColor;
  const CartSlider({
    Key? key,
    required this.title,
    required this.images,
    required this.backgroundColor,
  }) : super(key: key);
  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  textDirection: TextDirection.ltr, // Set text direction to LTR
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        appColors.saleText),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return Colors.blue.withOpacity(0);
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed))
                          return Colors.blue.withOpacity(0);
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  onPressed: () {},
                  child: Text('SEE ALL'),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: images
                  .map((image) => SliderImage(
                      image: image, title: "Title", price: "EGP 21"))
                  .toList(), // Example text for title and price
            ),
          ),
        ],
      ),
    );
  }
}
