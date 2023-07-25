import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:youtubeproject/data/repository/popular_product_repo.dart';

import '../data/repository/recommended_product_repo.dart';
import '../models/Products_model.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;

  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductListList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      _recommendedProductList = [];

      _recommendedProductList
          .addAll(Product.fromJson(response.body).product as Iterable);
      // print(_popularProductList);
      _isLoaded = true;

      update();
    } else {
      print("1");
    }
  }
}
