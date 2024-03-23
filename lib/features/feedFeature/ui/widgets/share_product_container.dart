import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../homeFeature/ui/widgets/center_image.dart';

class ShareProductContainer extends StatelessWidget {
  const ShareProductContainer({
    super.key,
    required this.header,
    required this.subTitle,
    required this.image,

  });
  static const appColors = AppColors();
  final String header;
  final String subTitle;
  final String image;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: appColors.secondColor,
          ),
          width: double.infinity,
          height: 217.h,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 5.h,
                    left: 5.w
                ),
                child: Column(
                  children: [
                    Text(
                      header,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
              CenterImage(
                appColors: const AppColors(),
                image: image,
                color: appColors.secondColor,
              ),
              Padding(
                padding:  EdgeInsets.only(
                    left: 5.w
                ),
                child: Text(
                  subTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text(
                      '42 minutes ago',
                      style: TextStyle(
                          color: AppColors.grey.shade700
                      ),
                    ),
                    const Spacer(),
                    MaterialButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Icon(
                            Icons.share,
                            color: AppColors.appBarActive,
                            size: 15.sp,
                          ),
                          2.horizontalSpace,
                          Text(
                            'SHARE',
                            style: TextStyle(
                                color: AppColors.appBarActive,
                                fontSize: 10.sp
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

