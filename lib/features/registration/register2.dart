import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/constants/app_colors.dart';
import '../LoginFeature/ui/widgets/jumia_logo.dart';
import '../LoginFeature/ui/widgets/second_text.dart';
import '../feedFeature/ui/widgets/button.dart';
import 'register3.dart';
import 'widgets/NameTextField.dart';
import 'widgets/PhoneTextField.dart';

class Register2 extends StatefulWidget {
  const Register2({Key? key}) : super(key: key);

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  late String firstName = '';
  late String lastName = '';
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
                child: Image.asset('assets/images/Icons/unnamed.png'),
              ),
              const SizedBox(height: 10), // Vertical spacing
              Text(
                'Personal details',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5), // Vertical spacing
              const Text(
                "We just need you to fill in some details.",
              ),
              NameTextField(
                label: 'First Name*',
                onValueChanged: (value) {
                  setState(() {
                    firstName = value;
                  });
                },
              ),
              NameTextField(
                label: 'Last Name*',
                onValueChanged: (value) {
                  setState(() {
                    lastName = value;
                  });
                },
              ),

              PhoneNumberTextField(
                label: 'Phone Number',
                onValueChanged: (String) {},
              ),
              SizedBox(height: 100.h), // Vertical spacing
              Button(
                width: 310.w,
                color: appColors.secondColor,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Register3()),
                  );
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
