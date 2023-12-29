import 'package:get/get.dart';
import 'package:app/app/pages/cart_page.dart';
import 'package:app/app/pages/main_page.dart';
import 'package:app/app/pages/splash_page.dart';
import 'package:app/app/controllers/splash_controller.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => SplashPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<SplashController>(() => SplashController());
      }),
    ),
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
    ),
    GetPage(
      name: Routes.cart,
      page: () => const CartPage(),
    ),
  ];
}
