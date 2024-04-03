import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../localization/locatizatio_changer.dart';
import 'SecondSettingsButton.dart';
import 'SwitchButton.dart';

class Settings_Container extends StatefulWidget {
  const Settings_Container({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  State<Settings_Container> createState() => _Settings_ContainerState();
}

class _Settings_ContainerState extends State<Settings_Container> {
  int _value = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 150.h,
        decoration: BoxDecoration(
            color: widget.appColors.secondColor,
            borderRadius: BorderRadius.circular(7)),
        child: Column(
          children: [
            const SwitchButton(
              title: 'Push Notification',
            ),

            SecondSettingsButton(
              title: 'Country',
              title2: 'Egypt',
              onPressed: () {},
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: widget.appColors.secondColor
              ),
              child: Container(
                color: widget.appColors.secondColor,
                height: 50.h,
                width: double.infinity,
                child: Row(
                    children: [
                      Text(
                        'Language',
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: widget.appColors.black
                        ),
                      ),
                      const Spacer(),
                      Text(
                        _value == 1 ? tr('Arabic') : tr('English'),
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: AppColors.textColor,
                        ),
                      ),


                      5.horizontalSpace,
                      Icon(Icons.arrow_forward_ios,
                        size: 12.sp,
                      ),

                    ]
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 150.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Radio(
                                activeColor: AppColors.appBarActive,
                                value: 1,
                                groupValue: _value,
                                onChanged: (value) {
                                  _value = value as int;
                                  LocalizationChanger.changeLanguage(context);
                                  setState(() {

                                  });
                                },
                              ),
                              10.horizontalSpace,
                              Text(
                                  'Arabic',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ).tr()
                            ],
                          ),
                          10.verticalSpace,
                          Row(
                            children: [
                              Radio(
                                activeColor: AppColors.appBarActive,
                                value: 2,
                                groupValue: _value,
                                onChanged: (value) {
                                  _value = value as int;
                                  LocalizationChanger.changeLanguage(context);
                                  setState(() {
                                  });
                                },
                              ),
                              10.horizontalSpace,
                               Text(
                                  'English',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold

                                ),
                              ).tr()
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            )          ],
        ),
      ),
    );
  }
}