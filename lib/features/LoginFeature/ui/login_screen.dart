import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/bordered_button.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/jumia_logo.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/link_text.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/second_text.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/text_field.dart';
import 'package:jumia/features/feedFeature/ui/widgets/button.dart';
import '../../../core/utils/constants/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../registration/register.dart';
import 'login_screen2.dart'; // Assuming Login2 widget is defined in login2.dart file

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static const appColors = AppColors();
  final _auth = FirebaseAuth.instance;
  late String email = '';

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
                child: Image.asset('assets/images/Icons/unnamed.png'),
              ),
              10.verticalSpace,
              Text(
                'Welcome To Jumia',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              5.verticalSpace,
              const SecondText(
                appColors: appColors,
                text:
                    'Type your e-mail or phone number to log in or create a Jumia account.',
              ),
              LoginTextField(
                label: 'Email or Mobile Number*',
                onValueChanged: (value) {
                  setState(() {
                    email =
                        value; 
                  });
                },
              ),
              20.verticalSpace,
              Button(
                width: 310.w,
                color: appColors.secondColor,
                onPressed: () async {
                  try {
                    // Check if email exists in Firebase Authentication
                    final methods =
                        await _auth.fetchSignInMethodsForEmail(email);
                    if (methods.isNotEmpty) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Login2(email: email)),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Register1(email: email)),
                      );
                      print('Email does not exist');
                    }
                  } catch (error) {
                    // Handle error
                    print('Error: $error');
                  }
                },
                title: 'Continue',
                appColors: AppColors(),
                backgroundColor: AppColors.appBarActive,
              ),
              5.verticalSpace,
              Text('By continuing you agree to Jumia\'s'),
              LinkText(),
              15.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Divider(),
              ),
              20.verticalSpace,
              BorderedButton(
                borderWidth: 1.sp,
                borderColor: AppColors.appBarActive,
                width: 310.w,
                color: AppColors.appBarActive,
                onPressed: () {},
                title: 'Login With PassKeys',
                appColors: AppColors(),
                backgroundColor: Colors.transparent,
              ),
              40.verticalSpace,
              BorderedButton(
                borderWidth: 1.sp,
                borderColor: appColors.blue,
                width: 310.w,
                color: appColors.secondColor,
                onPressed: () {},
                title: 'Login With Facebook',
                appColors: AppColors(),
                backgroundColor: appColors.blue,
                icon: Icons.facebook,
              ),
              30.verticalSpace,
              const SecondText(
                appColors: appColors,
                text:
                    'For further support, you may visit the Help Center or contact our customer service team.',
              ),
              JumiaLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
