import 'package:flutter/cupertino.dart';
import '../../../../core/utils/constants/app_colors.dart';
import 'SliderImage.dart';

class CategorySlider extends StatelessWidget {
  final List<String> images;
  final AppColors appColors;

  const CategorySlider({
    super.key,
    required this.images,
    required this.appColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: appColors.secondColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(7),
          topRight: Radius.circular(7),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: images.map((image) => SliderImage(image: image)).toList(),
        ),
      ),
    );
  }
}
