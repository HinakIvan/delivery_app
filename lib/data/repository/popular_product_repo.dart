import 'package:get/get.dart';

import '../api/api_client.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProducList() async {

    return await apiClient.getData('https://shop-app-flutter-a42ca-default-rtdb.firebaseio.com/products.json'
        );
  }
}
