// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({Key? key}) : super(key: key);
  static const appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              color: Theme.of(context).backgroundColor,
              child: Container(
                color: appColors
                    .primaryColor, // Set your desired background color here
                child: Image.asset('assets/images/Icons/cart.png'),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Your cart is empty!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              'Browse our categories and discover our best deals!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
