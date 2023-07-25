import 'package:get/get.dart';
import 'package:youtubeproject/utils/appconstants.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String? appBasedUrl;
  late Map<String, String>? _mainHeaders;

  ApiClient({required this.appBasedUrl}) {
    baseUrl = appBasedUrl;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
  Future<Response> getData(
    String uri,
  ) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
