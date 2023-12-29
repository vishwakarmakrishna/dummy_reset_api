import 'package:app/app/controllers/product_controller.dart';
import 'package:app/app/data/models/product_model.dart';
import 'package:app/app/pages/widgets/product_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final ProductController productController = Get.find();

  ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(0.0),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              product.thumbnail,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              errorBuilder: (context, error, stackTrace) => const FlutterLogo(),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  maxLines: 1,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text('\$${product.price.toString()}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    )),
                const SizedBox(height: 4.0),
                // Rating starts here
                StarRating(
                  rating: product.rating,
                ),
              ],
            ),
          ),
          FilledButton.tonalIcon(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4.0),
                  bottomRight: Radius.circular(4.0),
                ),
              ),
            ),
            onPressed: () => productController.addToCart(product),
            label: Obx(() {
              final cartItemCount =
                  productController.getCartItemQuantity(product.id);
              return cartItemCount > 0
                  ? Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        (cartItemCount > 99) ? '99+' : "($cartItemCount)",
                        style: const TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : const SizedBox.shrink();
            }),
            icon: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
