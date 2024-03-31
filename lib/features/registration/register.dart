import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/bordered_button.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/jumia_logo.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/link_text.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/second_text.dart';
import 'package:jumia/features/feedFeature/ui/widgets/button.dart';
import '../../../core/utils/constants/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../LoginFeature/ui/widgets/disabledTextField.dart';
import '../LoginFeature/ui/widgets/link_text2.dart';
import '../LoginFeature/ui/widgets/password.dart';
import 'register2.dart';

class Register1 extends StatefulWidget {
  final String email;

  const Register1({Key? key, required this.email}) : super(key: key);

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  static const appColors = AppColors();
  final _auth = FirebaseAuth.instance;
  late String password;
  late String confirmPassword;
  bool passwordsMatch = true;

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
                'Create your account',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              5.verticalSpace,
              const SecondText(
                appColors: appColors,
                text:
                    "let's get started by creating your account.\nTo keep your account safe, we need strong password",
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
                    // Check if passwords match whenever the password changes
                    passwordsMatch = password == confirmPassword;
                  });
                },
              ),
              20.verticalSpace,
              PasswordField(
                label: 'Confirm Password',
                onValueChanged: (value) {
                  setState(() {
                    confirmPassword = value;
                    // Check if passwords match whenever the confirm password changes
                    passwordsMatch = password == confirmPassword;
                  });
                },
              ),
              // Display error message if passwords don't match
              if (!passwordsMatch)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Passwords do not match',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              20.verticalSpace,
              Button(
                width: 310.w,
                color: appColors.secondColor,
                onPressed: () async {
                  // Check if passwords match before proceeding
                  if (passwordsMatch) {
                    try {
                      final userCredential =
                          await _auth.createUserWithEmailAndPassword(
                        email: widget.email,
                        password: password,
                      );
                      final user = userCredential.user;
                      if (user != null) {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Register2()),
                        );
                      }
                    } catch (e) {
                      // Handle sign-up errors here
                      print('Failed to sign up: $e');
                    }
                  }
                },
                title: 'Continue',
                appColors: AppColors(),
                backgroundColor: AppColors.appBarActive,
              ),
              100.verticalSpace,
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
