import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/jumia_logo.dart';
import 'package:jumia/features/LoginFeature/ui/widgets/second_text.dart';
import 'package:jumia/features/feedFeature/ui/widgets/button.dart';
import 'package:jumia/features/homeFeature/ui/home_screen.dart';
import 'package:jumia/features/registration/user-model.dart';
import '../../../core/utils/constants/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../LoginFeature/ui/widgets/password.dart';
import '../LoginFeature/ui/widgets/text_field.dart';
import 'user-repo/user-repo.dart';
import 'widgets/Birthdate.dart';
import 'widgets/GenderTextField.dart';
import './user-model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register3 extends StatefulWidget {
  final String email;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String password;

  const Register3({
    Key? key,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber, 
    required this.password,
  }) : super(key: key);

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
  late DateTime selectedDate = DateTime.now(); // Default selected date
  bool termsAndConditionsChecked = false;
  final User = UserRepo();

  String getGenderLabel(Gender gender) {
    return gender == Gender.male ? 'male' : 'female';
  }

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
                onDateChanged: (DateTime date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
              ),
              20.verticalSpace,
              Button(
                width: 310.w,
                color: appColors.secondColor,
                onPressed: termsAndConditionsChecked
                  ? () async {
                    // Create the user using Firebase Authentication
                    try {
                      final userCredential =
                          await _auth.createUserWithEmailAndPassword(
                        email: widget.email,
                        password: widget.password, // Use the provided password
                      );
                      final user = userCredential.user;
                      if (user != null) {
                        // User created successfully, now save additional details
                        // Create UserModel instance
                        final userModel = UserModel(
                          email: widget.email,
                          firstName: widget.firstName,
                          lastName: widget.lastName,
                          phoneNumber: widget.phoneNumber,
                          birthDate: selectedDate.toString(),
                          gender: getGenderLabel(selectedGender),
                          userID: user.uid,
                        );
                        // Save the user details to your database
                        User.createUser(userModel);
                        // Navigate to the home screen or any other screen
                        Navigator.of(context).popUntil((route) => route.isFirst);
                      }
                    } catch (e) {
                      // Handle sign-up errors here
                      print('Failed to sign up: $e');
                    }
                  }
                  : () {}, // Provide a default empty function when terms and conditions are not checked

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
