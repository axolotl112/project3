import 'package:get/get.dart';
import 'package:youtubeproject/pages/home/main_food_page.dart';

import '../pages/cart/cart_page.dart';
import '../pages/food/popular_details.dart';
import '../pages/food/recommended_food_detail.dart';
import '../pages/home/home_page.dart';
import '../pages/splash/splash_page.dart';

class RouteHelper {
  static const String splash = '/splash';
  static const String initial = "/";
  static const popularFood = "/popular-food";
  static const recommendedFood = "/recommended-food";
  static const String cartPage = '/cart-page';

  static String getInitial() => "$initial";
  static String getSplashRoute() => '$splash';

  static String getPopularFood(int pageId, String page) =>
      "$popularFood?pageId=$pageId&page=$page";
  static String getRecommendedFood(int pageId, String page) =>
      "$recommendedFood?pageId=$pageId&page=$page";
  static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => HomePage()),
    GetPage(
        name: splash,
        page: () {
          return SplashScreen();
        }),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters["page"];
          return PopulatDetails(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters['page'];
          return RecommenedFoodDetail(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
      name: cartPage,
      page: () {
        return CartPage();
      },
      transition: Transition.fadeIn,
    ),
  ];
}
