import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/jumia_logo.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/second_text.dart';
import 'package:jumia/features/feedFeature/ui/widgets/button.dart';
import 'package:jumia/features/homeFeature/ui/home_screen.dart';
import '../../../core/utils/constants/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../LoginFeature/ui/widgets/password.dart';
import '../LoginFeature/ui/widgets/text_field.dart';
import 'widgets/Birthdate.dart';
import 'widgets/GenderTextField.dart';

class Register3 extends StatefulWidget {
  const Register3({Key? key}) : super(key: key);

  @override
  State<Register3> createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  static const appColors = AppColors();
  final _auth = FirebaseAuth.instance;
  late String password;
  late String confirmPassword;
  bool passwordsMatch = true;
  late Gender selectedGender = Gender.male; // Default selected gender
  bool termsAndConditionsChecked = false;

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
                'Personal details',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              5.verticalSpace,
              const SecondText(
                appColors: appColors,
                text: "Almost there... Just a few more details.",
              ),
              GenderDropdown(
                // Integration of GenderDropdown widget
                onGenderChanged: (gender) {
                  setState(() {
                    selectedGender = gender;
                  });
                },
              ),
              20.verticalSpace,
              BirthDateField(
                label: 'Birth date',
                onDateChanged: (DateTime) {},
              ),
              20.verticalSpace,
              Button(
                width: 310.w,
                color: appColors.secondColor,
                onPressed: termsAndConditionsChecked
                    ? () {
                        // Pop the last 3 screens
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                      }
                    : () {}, // Provide a default empty function when the checkbox is not checked
                title: 'Continue',
                appColors: AppColors(),
                backgroundColor: AppColors.appBarActive,
              ),
              20.verticalSpace,
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: termsAndConditionsChecked,
                      onChanged: (value) {
                        setState(() {
                          termsAndConditionsChecked = value!;
                        });
                      },
                    ),
                    Text('I read and consented to the Terms and Conditions'),
                  ],
                ),
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
