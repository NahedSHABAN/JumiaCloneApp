import 'package:flutter/cupertino.dart';
import 'all_products_card.dart';

class AllProductsContainer extends StatelessWidget {
  const AllProductsContainer({
    Key? key,
    required this.titles,
    required this.images,
  }) : super(key: key);

  final List<String> titles;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < titles.length; i++)
          Row(
            children: [
              for (int j = i * 3; j < (i + 1) * 3 && j < images.length; j++)
                AllProductsCard(
                  image: images[j],
                  title: titles[i],
                ),
            ],
          ),
      ],
    );
  }
}
