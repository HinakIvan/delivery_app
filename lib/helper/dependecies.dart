// //just dependecies
//
import 'package:delivery_app1/controllers/popular_product_controller.dart';
// import 'package:delivery_app1/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
//
// import '../data/api/api_client.dart';
//
Future<void> init()async {
// Get.lazyPut(() => ApiClient(
//     // appBaseUrl:
//     // 'https://shop-app-flutter-a42ca-default-rtdb.firebaseio.com/'
// ));
//
// Get.lazyPut(() => PopularProductRepo(apiClient:Get.find() ));
//
Get.lazyPut(()=>PopularProductController());
//
}