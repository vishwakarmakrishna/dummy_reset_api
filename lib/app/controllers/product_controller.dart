import 'dart:developer';

import 'package:app/app/data/database/database_helper.dart';
import 'package:app/app/data/models/cart_model.dart';
import 'package:app/app/data/models/product_model.dart';
import 'package:app/app/services/api_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final ApiService _apiService = ApiService();
  final DatabaseHelper _databaseHelper = DatabaseHelper();

  RxList<Product> products = <Product>[].obs;
  RxList<CartModel> cartItems = <CartModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
    fetchCartItems();
    // Observe changes to cartItems and update the UI
    ever(cartItems, (_) => update());
  }

  Future<void> fetchCartItems() async {
    try {
      // Fetch cart items from the database
      final List<CartModel> cartList = await _databaseHelper.getCartItems();

      // Update the cart items list
      cartItems.assignAll(cartList);

      // Explicitly refresh to trigger a rebuild
      cartItems.refresh();
    } catch (e) {
      log('Error fetching cart items: $e');
    }
  }

  Future<void> fetchData() async {
    try {
      // Fetch data from API
      final response = await _apiService.getProducts();

      // Parse and save data to the database
      final List<Product> productList = (response.data['products'] as List)
          .map((json) => Product.fromJson(json))
          .toList();
      await _databaseHelper.insertOrUpdateProducts(productList);

      // Update the products list
      products.assignAll(productList);

      // Explicitly refresh to trigger a rebuild
      products.refresh();
    } catch (e) {
      log('Error fetching data: $e');
    }
  }

  Future<void> refreshData() async {
    await fetchData();
    await fetchCartItems();
  }

  int getCartItemQuantity(int productId) {
    final cartItem = cartItems.firstWhere(
      (item) => item.productId == productId,
      orElse: () => CartModel(productId: productId, quantity: 0),
    );
    return cartItem.quantity;
  }

  Future<void> addToCart(Product product) async {
    // Check if the product already exists in the cart
    final isInCart = await _databaseHelper.isProductInCart(product.id);

    if (isInCart) {
      // Increase quantity if the product is already in the cart
      await _databaseHelper.updateCartItemQuantity(product.id);
    } else {
      // Add a new item to the cart
      await _databaseHelper.insertCartItem(product.id);
    }
    await fetchCartItems();
    // Notify listeners and update the UI
    update();
  }

  Future<void> removeFromCart(Product product) async {
    // Check if the product already exists in the cart
    final isInCart = await _databaseHelper.isProductInCart(product.id);

    if (isInCart) {
      // Decrease quantity if the product is already in the cart
      await _databaseHelper.removeFromCart(product);
    }
    await fetchCartItems();
    // Notify listeners and update the UI
    update();
  }

  Future<void> clearCart() async {
    await _databaseHelper.removeAllCartItems();
    await fetchCartItems();
    cartItems.clear();
    // Notify listeners and update the UI
    update();
  }
}
