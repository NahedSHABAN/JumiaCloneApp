import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const SliderImage({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // Use a Column to stack Image and Text vertically
        children: [
          Container(
            height: 100,
            child: Image.asset(image),
          ),
          SizedBox(height: 3),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
            textDirection: TextDirection.ltr,
          ),
          SizedBox(height: 1),
          Text(
            price,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
            textDirection: TextDirection.ltr,
          ),
        ],
      ),
    );
  }
}
