import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';
import 'package:jumia/features/helpFeature/ui/widgets/AboutJumiaContainer.dart';
import 'package:jumia/features/helpFeature/ui/widgets/LiveChatButton.dart';
import 'package:jumia/features/helpFeature/ui/widgets/SettingsContainer.dart';
import 'package:jumia/features/helpFeature/ui/widgets/info_container.dart';
import '../../accountFeature/ui/widgets/account_text.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  final AppColors appColors = const AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: LiveButton(
                color: appColors.secondColor,
                backgroundColor: AppColors.appBarActive,
                width: 300.w,
                title: 'Start Live Chat'.tr(),
                icon: Icons.chat_rounded,
                appColors: const AppColors(),
                onPressed: (){},
              ),
            ),
            const AccountText(
              title: 'About Jumia',
            ),
            const AboutJumiaContainer(
              appColors:AppColors()
            ),
            const AccountText(
              title: 'SETTINGS',
            ),
            const Settings_Container(
              appColors: AppColors(),
            ),
            const AccountText(
              title: 'APP INFO',
            ),
            const InfoContainer(
              appColors: AppColors(),
            )

          ],
        ),
      )
    );
  }
}
