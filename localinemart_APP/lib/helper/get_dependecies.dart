import 'package:shared_preferences/shared_preferences.dart';
import 'package:LocaLineMart/controllers/auth_controller.dart';
import 'package:LocaLineMart/controllers/cart_controller.dart';
import 'package:LocaLineMart/controllers/location_controller.dart';
import 'package:LocaLineMart/controllers/popular_product.dart';
import 'package:LocaLineMart/controllers/product_controller.dart';
import 'package:get/get.dart';
import 'package:LocaLineMart/controllers/user_controller.dart';
import 'package:LocaLineMart/data/api/api_client.dart';
import 'package:LocaLineMart/data/repos/auth_repo.dart';
import 'package:LocaLineMart/data/repos/cart_repo.dart';
import 'package:LocaLineMart/data/repos/location_repo.dart';
import 'package:LocaLineMart/data/repos/order_controller.dart';
import 'package:LocaLineMart/data/repos/order_repo.dart';
import 'package:LocaLineMart/data/repos/popular_product_repo.dart';
import 'package:LocaLineMart/data/repos/product_repo.dart';
import 'package:LocaLineMart/data/repos/user_repo.dart';
import 'package:LocaLineMart/uitls/app_constants.dart';

Future<void> init() async {
  final sharedPreference = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreference);
  Get.lazyPut(() => ApiClient(
      appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));
  //first load the repos
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(
      () => LocationRepo(apiClient: Get.find(), sharedPreferences: Get.find()));

  Get.lazyPut(() => UserRepo(apiClient: Get.find()));
  Get.lazyPut(() => ProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));
  Get.lazyPut(
      () => OrderRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => LocationController(locationRepo: Get.find()));

  Get.lazyPut(() => UserController(userRepo: Get.find()));
  Get.lazyPut(() => ProductController(productRepo: Get.find()));
  Get.lazyPut(() => PopularProduct(popularProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
  Get.lazyPut(() => OrderController(orderRepo: Get.find()));
}
