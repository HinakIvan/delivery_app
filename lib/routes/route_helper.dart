import 'package:delivery_app1/home/main_food_page.dart';
import 'package:delivery_app1/pages/cart/cart_page.dart';
import 'package:delivery_app1/pages/food/popular_food_detail.dart';
import 'package:delivery_app1/pages/food/recommended_food_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/homePage';
  static const String popularFood = '/popular-food';
  static const String recommendedFood = '/recommended-food';
  static const String cartPage ='/cart-page';

  static String getInitial() => '$initial';
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId) => '$recommendedFood?pageId=$pageId';
  static String getCartPage()=>'$cartPage';

  static List<GetPage> routes = [
    GetPage(
        name: recommendedFood,
        page: () {var pageId = Get.parameters[
          'pageId'
        ];
          return RecommendedFoodDetail(pageId:int.parse(pageId!));},
        transition: Transition.fadeIn),
    GetPage(name: initial, page: () => MainFoodPage()),

    GetPage(
        name: popularFood,
        page:  () {var pageId = Get.parameters[
  'pageId'
  ];return  PopularFoodDetail(pageId : int.parse(pageId!));},
        transition: Transition.fadeIn),GetPage(transition: Transition.fadeIn,name: cartPage, page: (){
          return CartPage();
    })
  ];
}

//Logic how get parametrs from id 8.14