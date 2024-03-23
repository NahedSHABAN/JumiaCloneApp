import 'package:flutter/material.dart';
import 'package:jumia/features/homeFeature/ui/widgets/sale_card.dart';
import '../../../../core/utils/constants/app_colors.dart';

class ProductSlider extends StatelessWidget {
  const ProductSlider({
    Key? key,
    required this.appColors,
    required this.productsData,
  }) : super(key: key);

  final AppColors appColors;
  final List<ProductData> productsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: appColors.secondColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(7),
          topRight: Radius.circular(7),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: productsData.map((product) {
            return _buildSaleCard(
              productSale: product.sale,
              productImage: product.image,
              productName: product.name,
              productPrice: product.price,
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildSaleCard({
    required String productSale,
    required String productImage,
    required String productName,
    required String productPrice,
  }) {
    return Sale_Card(
      productSale: productSale,
      productImage: productImage,
      productName: productName,
      productPrice: productPrice,
      appColors: appColors,
    );
  }
}

class ProductData {
  final String sale;
  final String image;
  final String name;
  final String price;

  ProductData({
    required this.sale,
    required this.image,
    required this.name,
    required this.price,
  });
}
