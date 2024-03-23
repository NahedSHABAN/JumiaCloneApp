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
        height: 41.h,
        decoration: BoxDecoration(color: appColors.flashSale),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
          child: Row(
            children: [
              Stack(
                children: [
                  Icon(
                    MyFlutterApp.flash, // Use the custom flash icon
                    size: 30.sp, // Set the icon size
                    color: AppColors.appBarActive, // Set the icon color
                  ),
                  Positioned(
                    top: 10, // Adjust the position of the second icon vertically
                    left: 10, // Adjust the position of the second icon horizontally
                    child: Icon(
                      MyFlutterApp.tag, // Use the custom tag icon
                      size: 12.sp, // Set the icon size
                      color: appColors.flashSale, // Set the icon color
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
                    child: Text(
                      'Flash Sales Every Day',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: appColors.secondColor,
                      ),
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
                          'TIME LEFT :',
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