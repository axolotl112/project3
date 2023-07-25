import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

import '../../utils/appconstants.dart';
import '../api/api_class.dart';

class ProductRepo extends GetxService {
  final ApiClient apiClient;
  ProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    // print("I am repo.................");
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
