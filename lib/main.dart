import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:youtubeproject/controllers/cart_controller.dart';
import 'package:youtubeproject/controllers/popular_product_controllers.dart';
import 'package:youtubeproject/controllers/recommended_product_controller.dart';
import 'package:youtubeproject/pages/cart/cart_page.dart';
import 'package:youtubeproject/pages/food/popular_details.dart';
import 'package:youtubeproject/pages/food/recommended_food_detail.dart';
import 'package:youtubeproject/pages/home/food_page_body.dart';
import 'package:youtubeproject/pages/home/main_food_page.dart';
import 'package:youtubeproject/routes/route_helper.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await dep.init();
  runApp(const MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCartData();
    return GetBuilder<PopularController>(builder: (_) {
      return GetBuilder<RecommendedProductController>(builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute: RouteHelper.getSplashRoute(),
          getPages: RouteHelper.routes,
        );
      });
    });
  }
}
