import 'package:delivery_app1/home/main_food_page.dart';
import 'package:delivery_app1/pages/food/popular_food_detail.dart';
import 'package:get/get.dart';

class RouteHelper{
  static const String  initial='/homePage';
  static const String popularFood='/popular-food';

  static String getPopularFood()=>'$popularFood';

  static List<GetPage> routes=[
    GetPage(name: '/homePage', page: ()=>MainFoodPage()),
    GetPage(name: '/popular-food', page: ()=>PopularFoodDetail(),transition:Transition.fadeIn ),

  ];
}