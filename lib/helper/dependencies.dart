import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtubeproject/controllers/cart_controller.dart';
import 'package:youtubeproject/controllers/popular_product_controllers.dart';
import 'package:youtubeproject/controllers/recommended_product_controller.dart';
import 'package:youtubeproject/data/api/api_class.dart';
import 'package:youtubeproject/data/repository/cart_repo.dart';
import 'package:youtubeproject/data/repository/popular_product_repo.dart';
import 'package:youtubeproject/data/repository/recommended_product_repo.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);

  Get.lazyPut(() => ApiClient(appBasedUrl: "http://mvs.bslmeiyu.com"));

//repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));

  //controllers

  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => PopularProduct(popularProductRepo: Get.find()));
  Get.lazyPut(() => CartController(
        cartRepo: Get.find(),
      ));
}
