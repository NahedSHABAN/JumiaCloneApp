import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProductSlider1 extends StatefulWidget {
  final List<String> imagePaths;
  final Color containerColor;
  final double space; // Add space property for spacing between images

  const ProductSlider1({
    super.key,
    required this.imagePaths,
    required this.containerColor,
    required this.space,
  });

  @override
  _CarouselContainerState createState() => _CarouselContainerState();
}

class _CarouselContainerState extends State<ProductSlider1> {
  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.containerColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(7),
          topRight: Radius.circular(7),
        ),
      ),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: widget.imagePaths.length,
            options: CarouselOptions(
              autoPlay: true,
              height: 280.h,
              autoPlayCurve: Curves.easeInOut,
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              autoPlayInterval: const Duration(seconds: 10),

              onPageChanged: (index, reason) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              if (index == 0) {
                // The first image
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal:  widget.space),
                  child: Image.asset(
                    widget.imagePaths[index],
                    fit: BoxFit.fill,
                  ),
                );
              } else {
                // Subsequent images with space
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal:  widget.space),
                  child: Image.asset(
                    widget.imagePaths[index],
                    fit: BoxFit.fill,
                  ),
                );
              }
            },
          ),

        ],
      ),
    );
  }
}
