import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jumia/core/utils/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselContainer extends StatefulWidget {
  final List<String> imagePaths;
  final Color containerColor;
  final double space; // Add space property for spacing between images

  const CarouselContainer({
    Key? key,
    required this.imagePaths,
    required this.containerColor,
    required this.space,
  }) : super(key: key);

  @override
  _CarouselContainerState createState() => _CarouselContainerState();
}

class _CarouselContainerState extends State<CarouselContainer> {
  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        height: 165.h,
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
                height: 150.h,
                autoPlayCurve: Curves.easeInOut,
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                autoPlayInterval: const Duration(seconds: 2),
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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: AnimatedSmoothIndicator(
                activeIndex: myCurrentIndex,
                count: widget.imagePaths.length,
                effect: WormEffect(
                  activeDotColor: AppColors.appBarActive,
                  dotWidth: 4.w,
                  dotHeight: 3.h,
                  spacing: 2.w,
                  paintStyle: PaintingStyle.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
