import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/bordered_button.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/jumia_logo.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/link_text.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/second_text.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/text_field.dart';
import 'package:jumia/features/feedFeature/ui/widgets/button.dart';
import '../../../core/utils/constants/app_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();

}

class _LoginState extends State<Login> {
  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.h,
              width: 60.w,
              child: Image.asset('assets/images/Icons/unnamed.png'
              ),
            ),
            10.verticalSpace,
            Text(
              'Welcom To Jumia',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold
              ),
            ),
            5.verticalSpace,
            const SecondText(
                appColors: appColors,
              text: 'Type your e-mail or phone number to log in or create a Jumia account.',
            ),
            const LoginTextField(
              label: 'Email or Mobile Number*',
            ),
            20.verticalSpace,
            Button(
              width: 310.w,
              color: appColors.secondColor,
              onPressed: (){},
              title: 'Continue',
              appColors: const AppColors(),
              backgroundColor: AppColors.appBarActive,
            ),
            5.verticalSpace,
            const Text('By continuing you agree to Jumia\'s'),
            const LinkText(),
            15.verticalSpace,
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30
              ),
              child: Divider(),
            ),
            20.verticalSpace,
            BorderedButton(
              borderWidth: 1.sp,
              borderColor: AppColors.appBarActive,
              width: 310.w,
              color: AppColors.appBarActive,
              onPressed: (){},
              title: 'Login With PassKeys',
              appColors: const AppColors(),
              backgroundColor:Colors.transparent,
            ),
            40.verticalSpace,
            BorderedButton(
              borderWidth: 1.sp,
              borderColor: appColors.blue,
              width: 310.w,
              color: appColors.secondColor,
              onPressed: (){},
              title: 'Login With Facebook',
              appColors: const AppColors(),
              backgroundColor:appColors.blue,
              icon: Icons.facebook
            ),
            30.verticalSpace,
            const SecondText(
              appColors: appColors,
              text: 'For further support, you may visit the Help Center or contact out customer service team.',
            ),
            const JumiaLogo()
        
          ],
        ),
      ),
    ));
  }

}




