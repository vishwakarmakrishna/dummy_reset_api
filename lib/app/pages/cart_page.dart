import 'package:app/app/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final ProductController productController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart Page'),
        actions: [
          // Clear cart
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                title: 'Clear cart',
                middleText: 'Are you sure you want to clear your cart?',
                textConfirm: 'Yes',
                textCancel: 'No',
                onConfirm: () {
                  productController.clearCart();
                  Get.back();
                },
              );
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          final cartItems = productController.cartItems;
          final products = productController.products;
          if (cartItems.isEmpty) {
            return const Center(
              child: Text('Your cart is empty.'),
            );
          }

          return ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              final cartItem = cartItems[index];
              final product =
                  products.where((product) => product.id == cartItem.productId);
              if (product.isEmpty) {
                return const Center(
                  child: Text('Your cart is empty.'),
                );
              }
              final cartProduct = product.first;

              return Card(
                elevation: 4.0,
                child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 16.0,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  dense: true,
                  leading: Image.network(
                    cartProduct.thumbnail,
                    width: 50,
                    height: 50,
                    errorBuilder: (context, error, stackTrace) =>
                        const FlutterLogo(size: 50),
                    fit: BoxFit.cover,
                  ),
                  title: Text(cartProduct.title),
                  subtitle: Text('\$${cartProduct.price.toString()}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () =>
                            productController.removeFromCart(cartProduct),
                        icon: const Icon(Icons.remove),
                      ),
                      Text(cartItem.quantity.toString()),
                      IconButton(
                        onPressed: () =>
                            productController.addToCart(cartProduct),
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
