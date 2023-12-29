import 'package:app/app/controllers/product_controller.dart';
import 'package:app/app/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // Initialize controllers here
    Get.put(SplashController(), permanent: true);
    Get.put(ProductController(), permanent: true);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Techsevin App',
      initialRoute: Routes.splash,
      getPages: AppPages.pages,
    );
  }
}
