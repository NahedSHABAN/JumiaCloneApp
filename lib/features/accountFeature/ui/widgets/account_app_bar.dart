import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../feedFeature/ui/widgets/button.dart';

class AccountAppBar extends StatelessWidget {
  const AccountAppBar({
    super.key,
    required this.appColors,
  });

  final AppColors appColors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        10.verticalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                  color: appColors.secondColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold
              ),
            ),
            2.verticalSpace,
            Text(
              'Enter your account',
              style: TextStyle(
                color: appColors.secondColor,
                fontSize: 12.sp,
              ),
            ),

          ],
        ),
        const Spacer(),
        SizedBox(
          child: Button(
            appColors: appColors,
            onPressed: (){},
            title: 'SIGN IN',
            width: 30.w,
            backgroundColor: AppColors.appBarActive,
            color: appColors.secondColor,
          ),
        ),

      ],
    );
  }
}
