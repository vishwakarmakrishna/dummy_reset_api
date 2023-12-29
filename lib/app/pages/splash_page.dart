import 'package:app/app/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final SplashController splashController = Get.find();
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    // create a size sqare responsive
    double size = mediaQueryData.size.width / 2;

    return Scaffold(
      body: Center(
          child: FlutterLogo(
        size: size,
      )),
    );
  }
}
