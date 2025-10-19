import 'package:flutter/material.dart';
import 'package:otex_app_task/Features/Home/domain/entities/product_entity.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/product_card_item.dart';

class GridProductCard extends StatelessWidget {
  const GridProductCard({super.key, required this.products});
    final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(), // عشان متتعارضش مع Scroll الرئيسي
      shrinkWrap: true, // عشان ياخد ارتفاع المحتوى
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.47,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductCardItem(product: product);
      },
    );
  }
}
