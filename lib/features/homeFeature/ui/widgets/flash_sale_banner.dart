import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/my_flutter_app_icons.dart';

class FlashSaleBanner extends StatelessWidget {
  const FlashSaleBanner({
    super.key,
    required this.appColors,
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  final AppColors appColors;
  final int hours;
  final int minutes;
  final int seconds;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 10),
      child: Container(
        width: double.infinity,
        // height: 41.h,
        decoration: BoxDecoration(color: appColors.flashSale),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
          child: Row(
            children: [
              Stack(
                children: [
                  Icon(
                    MyFlutterApp.flash,
                    size: 30.sp,
                    color: AppColors.appBarActive,
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Icon(
                      MyFlutterApp.tag,
                      size: 12.sp,
                      color: appColors.flashSale,
                    ),
                  ),
                ],
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding:  EdgeInsetsDirectional.symmetric(
                      vertical: 2.h,
                      horizontal: 5.w,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Flash Sales'.tr(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: appColors.secondColor,
                          ),
                        ),
                        Text(
                          'Every Day'.tr(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: appColors.secondColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(
                      // vertical: 10,
                      horizontal: 25.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'TIME LEFT :'.tr(),
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: appColors.secondColor,
                          ),
                        ),
                        5.horizontalSpace,
                        TimerCountdown(
                          colonsTextStyle: TextStyle(color: appColors.secondColor),
                          enableDescriptions: false,
                          timeTextStyle: TextStyle(color: appColors.secondColor),
                          spacerWidth: 1.w,
                          format: CountDownTimerFormat.hoursMinutesSeconds,
                          endTime: DateTime.now().add(
                            Duration(
                              hours: hours,
                              minutes: minutes,
                              seconds: seconds,
                            ),
                          ),
                          onEnd: () {
                            print("Deal is over");
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'SEE ALL',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: appColors.secondColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}