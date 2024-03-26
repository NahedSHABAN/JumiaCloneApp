import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';
import 'package:jumia/features/accountFeature/ui/widgets/account_app_bar.dart';
import 'package:jumia/features/accountFeature/ui/widgets/account_container.dart';
import 'package:jumia/features/accountFeature/ui/widgets/account_text.dart';
import 'package:jumia/features/accountFeature/ui/widgets/balance_bannar.dart';
import 'package:jumia/features/accountFeature/ui/widgets/settings_container.dart';

import '../../feedFeature/ui/widgets/button.dart';


class Account extends StatefulWidget {
  const Account({Key? key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    final AppColors appColors = AppColors();
    return Scaffold(
      backgroundColor: appColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: AppColors.appBarColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  5.verticalSpace,
                  const AccountAppBar(appColors: AppColors()),
                  10.verticalSpace
                ],
              ),
            ),
          ),
          BalanceBanner(
            appColors: AppColors(),
            onTap: () {},
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.verticalSpace,
                      const AccountText(
                        title: 'MY JUMIA ACCOUNT',
                      ),
                      const AccountContainer(appColors: AppColors()),
                      const AccountText(
                        title: 'MY SETTINGS',
                      ),
                      const SettingsContainer(appColors: AppColors()),
                    ],
                  ),
                ),
                10.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Button(
                    appColors: appColors,
                    onPressed: (){},
                    title: 'LOGIN',
                    width: 330.w,
                    backgroundColor: appColors.primaryColor,
                    color:AppColors.appBarActive,
                  ),
                ),
                10.verticalSpace,

              ],
            ),
          ),
        ],
      ),
    );
  }
}






