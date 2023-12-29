import 'dart:convert';
import 'dart:developer';

import 'package:app/app/data/models/cart_model.dart';
import 'package:app/app/data/models/product_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static const String dbName = 'my_database.db';
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  static Future<Database> initDatabase() async {
    final path = await getDatabasesPath();
    final location = join(path, dbName);
    return openDatabase(location, version: 2, onCreate: _createDb);
  }

  static void _createDb(Database db, int version) async {
    await db.execute('''
    CREATE TABLE products (
      id INTEGER PRIMARY KEY,
      title TEXT,
      description TEXT,
      price INTEGER,
      discountPercentage REAL,
      rating REAL,
      stock INTEGER,
      brand TEXT,
      category TEXT,
      thumbnail TEXT,
      images TEXT
    )
  ''');

    await db.execute('''
      CREATE TABLE cart (
        productId INTEGER PRIMARY KEY,
        quantity INTEGER
      )
    ''');
  }

  Future<void> insertOrUpdateProducts(List<Product> products) async {
    final Database db = await database;
    final Batch batch = db.batch();

    for (final product in products) {
      batch.insert(
        'products',
        product.toJson()
          ..['images'] =
              jsonEncode(product.images), // Convert list to JSON String

        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    await batch.commit();
  }

  Future<void> addToCart(Product product) async {
    final Database db = await database;
    final int? count = Sqflite.firstIntValue(await db.rawQuery(
      'SELECT COUNT(*) FROM cart WHERE productId = ?',
      [product.id],
    ));

    if (count != null && count > 0) {
      await db.rawUpdate(
        'UPDATE cart SET quantity = quantity + 1 WHERE productId = ?',
        [product.id],
      );
    } else {
      await db.insert(
          'cart', CartModel(productId: product.id, quantity: 1).toJson());
    }
  }

  Future<List<CartModel>> getCartItems() async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('cart');

    return List.generate(maps.length, (i) {
      return CartModel.fromJson(maps[i]);
    });
  }

  Future<void> removeFromCart(Product product) async {
    final Database db = await database;
    final int? count = Sqflite.firstIntValue(await db.rawQuery(
      'SELECT quantity FROM cart WHERE productId = ?',
      [product.id],
    ));

    if (count != null && count > 0) {
      int newQuantity = count - 1;

      if (newQuantity > 0) {
        await db.rawUpdate(
          'UPDATE cart SET quantity = ? WHERE productId = ?',
          [newQuantity, product.id],
        );
        log('Removed from cart: ${product.title} (${product.id}), Quantity: $newQuantity');
      } else {
        // If newQuantity is zero, remove the item from the cart
        await db
            .delete('cart', where: 'productId = ?', whereArgs: [product.id]);
        log('Removed from cart: ${product.title} (${product.id})');
      }
    }

    // Log cart after update
    final List<Map<String, dynamic>> maps = await db.query('cart');
    log('cart: $maps');
  }

  Future<bool> isProductInCart(int productId) async {
    final Database db = await database;
    final int count = Sqflite.firstIntValue(await db.rawQuery(
          'SELECT COUNT(*) FROM cart WHERE productId = ?',
          [productId],
        )) ??
        0;

    return count > 0;
  }

  Future<void> updateCartItemQuantity(int productId) async {
    final Database db = await database;
    await db.rawUpdate(
      'UPDATE cart SET quantity = quantity + 1 WHERE productId = ?',
      [productId],
    );
  }

  Future<void> insertCartItem(int productId) async {
    final Database db = await database;
    await db.insert('cart', {'productId': productId, 'quantity': 1},
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> removeCartItem(int productId) async {
    final Database db = await database;
    await db.delete('cart', where: 'productId = ?', whereArgs: [productId]);
  }

  Future<void> removeAllCartItems() async {
    final Database db = await database;
    await db.delete('cart');
  }
}
