import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';

class NewProductContainer extends StatelessWidget {
  const NewProductContainer({
    Key? key,
    required this.appColors,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.onTap,
  }) : super(key: key);

  final AppColors appColors;
  final String image1;
  final String image2;
  final String image3;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: appColors.secondColor,
          ),
          width: double.infinity,
          height: 220.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: appColors.blue,
                      borderRadius: BorderRadius.circular(3)),
                  height: 17.h,
                  width: 85.w,
                  child: Column(
                    children: [
                      Text(
                        'New Products',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: appColors.secondColor),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Container(
                      height: 30.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: appColors.primaryColor,
                      ),
                      child: const Icon(Icons.store),
                    ),
                  ),
                  Text('Check the Newest Products!',
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w500)),
                ],
              ),
              const Divider(),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      height: 100.h,
                      width: 100.w,
                      child: Image.asset(
                        image1,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      height: 100.h,
                      width: 100.w,
                      child: Image.asset(
                        image2,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 100.h,
                            width: 100.w,
                            child: Image.asset(
                              image3,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 100.h,
                            width: 100.w,
                            color: appColors.black.withOpacity(0.4),
                            alignment: Alignment.center,
                            child: Text(
                              'SEE ALL',
                              style: TextStyle(
                                color: appColors.secondColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ]),
                  ),
                ],
              ),
              8.verticalSpace,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '42 minutes ago',
                  style: TextStyle(
                      color: AppColors.grey.shade700
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
