import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_images.dart';
import '../../../domain/entities/product_entity.dart';
import 'custom_ad_card_row.details.dart';

class ProductCardItem extends StatelessWidget {
  final ProductEntity product;

  const ProductCardItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: 170,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.asset(
              'assets/images/${product.productImageURL}',
              height: size.height * 0.3,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.image, size: 50),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // اسم المنتج
                CustomRowAdCard(
                  text: product.productName,
                  imagePath: Assets.imagesDiscount, 
                  color: Colors.black,
                ),
                const SizedBox(height: 6),

                CustomRowAdCard(
                  text: "${product.price}جم/ ${product.discountPrice}",
                  imagePath: Assets.imagesFavorite,
                  color: Colors.red,
                ),
                const SizedBox(height: 8),

                Row(
                  children: [
                    const Icon(Icons.local_fire_department, size: 14),
                    const SizedBox(width: 4),
                    const Text('تم بيع 3.3k+', overflow: TextOverflow.ellipsis),
                  ],
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    Image.asset(Assets.imagesCompanyBadge , width: 26,height: 26,),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      padding: const EdgeInsets.all(6),
                      child: const Icon(Icons.add_shopping_cart, size: 18),
                    ),
                    SizedBox(width: 12,),
                     Image.asset(Assets.imagesTla3tmostafa , width: 26,height: 26,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
