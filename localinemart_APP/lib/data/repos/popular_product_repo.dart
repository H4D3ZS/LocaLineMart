import 'package:LocaLineMart/data/api/api_client.dart';
import 'package:LocaLineMart/models/product.dart';
import 'package:LocaLineMart/uitls/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
