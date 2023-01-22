
import 'package:delivery_app1/controllers/cart_controller.dart';
import 'package:delivery_app1/controllers/popular_product_controller.dart';
import 'package:delivery_app1/data/repository/cart_repo.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init()async {
final sharedPreferences = await SharedPreferences.getInstance();

Get.lazyPut(()=>sharedPreferences);

Get.lazyPut(()=>CartRepo(sharedPreferences:Get.find()));

Get.lazyPut(()=>PopularProductController());
Get.lazyPut(() => CartController(cartRepo: Get.find()));
//
}