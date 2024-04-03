import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllProductsCard extends StatelessWidget {
  const AllProductsCard({
    super.key,
    required this.title,
    required this.image
  });
final String title ;
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image,
            height: 50.h,
            width: 50.w,
            fit: BoxFit.fill,
          ),
          5.verticalSpace,
          Text(title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
                fontSize: 10.sp
            ),
          )
        ],
      ),
    );
  }
}
