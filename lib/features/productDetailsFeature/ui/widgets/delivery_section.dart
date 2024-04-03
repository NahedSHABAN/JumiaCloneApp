import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/productDetailsFeature/ui/widgets/return_section.dart';

import '../../../../core/utils/constants/app_colors.dart';
import '../../../homeFeature/ui/widgets/banner.dart';
import 'drop_down_list.dart';

class DeliverySection extends StatefulWidget {
   const DeliverySection({
    super.key,
    required this.appColors,

  });

  final AppColors appColors;

  @override
  State<DeliverySection> createState() => _DeliverySectionState();
}

class _DeliverySectionState extends State<DeliverySection> {

  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: widget.appColors.secondColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery and Returns Info',
              style:
              TextStyle(fontSize: 15.sp, color: widget.appColors.black),
            ),
            const Divider(),
            5.verticalSpace,
            Text(
                'Choose Location',
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold
              ),
            ),
            10.verticalSpace,
            const DropDown(),
            const DropDown(),
            10.verticalSpace,
            DelverySection(appColors: appColors),

          ],
        ),
      ),
    );
  }
}

