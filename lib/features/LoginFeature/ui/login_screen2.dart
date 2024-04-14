import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/bordered_button.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/jumia_logo.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/link_text.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/second_text.dart';
import 'package:jumia/features/feedFeature/ui/widgets/button.dart';
import '../../../core/utils/constants/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../accountFeature/ui/account.dart';
import '../../homeFeature/ui/home_screen.dart';
import 'widgets/disabledTextField.dart';
import 'widgets/disabled_text_field.dart';
import 'widgets/link_text2.dart';
import 'widgets/password.dart';

class Login2 extends StatefulWidget {
  final String email;

  const Login2({Key? key, required this.email}) : super(key: key);

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  static const appColors = AppColors();
  final _auth = FirebaseAuth.instance;
  late String password;

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
                'Welcome back!',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              5.verticalSpace,
              const SecondText(
                appColors: appColors,
                text:
                    'Type your e-mail or phone number to log in or create a Jumia account.',
              ),
              DisabledTextField(
                label: widget.email,
                onValueChanged: (value) {},
              ),
              PasswordField(
                label: 'Password',
                onValueChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              20.verticalSpace,
              Button(
                width: 310.w,
                color: appColors.secondColor,
                onPressed: () async {
                  try {
                    final userCredential =
                        await _auth.signInWithEmailAndPassword(
                      email: widget.email,
                      password: password,
                    );
                    final user = userCredential.user;
                    if (user != null) {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    }
                  } catch (e) {
                    print('Failed to sign in: $e');
                  }
                },
                title: 'Login',
                appColors: AppColors(),
                backgroundColor: AppColors.appBarActive,
              ),
              5.verticalSpace,
              LinkText2(),
              115.verticalSpace,
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
