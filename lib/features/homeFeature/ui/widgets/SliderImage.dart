import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {
  final String image;
  const SliderImage({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(7),
              topRight: Radius.circular(7),
            ),
          ),
          child: Image.asset(
              image)),
    );
  }
}
