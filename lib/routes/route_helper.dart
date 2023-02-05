import 'package:delivery_app1/home/main_food_page.dart';
import 'package:delivery_app1/pages/address/add_address_page.dart';
import 'package:delivery_app1/pages/cart/cart_page.dart';
import 'package:delivery_app1/pages/food/popular_food_detail.dart';
import 'package:delivery_app1/pages/food/recommended_food_detail.dart';
import 'package:delivery_app1/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_page.dart';

class RouteHelper {
  static const String initial = '/homePage';
  static const String popularFood = '/popular-food';
  static const String recommendedFood = '/recommended-food';
  static const String cartPage = '/cart-page';
  static const String splashPage = '/splash-page';

  static const String addAddress = '/add-address';

  static String getInitial() => '$initial';

  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';

  static String getRecommendedFood(int pageId) =>
      '$recommendedFood?pageId=$pageId';

  static String getCartPage() => '$cartPage';

  static String getSplashPage() => '$splashPage';

  static String getAddressPage() => '$addAddress';

  static List<GetPage> routes = [
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendedFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        transition: Transition.fadeIn, name: initial, page: () => HomePage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        transition: Transition.fadeIn,
        name: cartPage,
        page: () {
          return CartPage();
        }),
    GetPage(
        transition: Transition.fadeIn,
        name: splashPage,
        page: () => SplashScreen()),
    // GetPage(
    //     name: addAddress,
    //     page: () {
    //       return
    //       // AddAddressPage();
    //     })
  ];
}

//Logic how get parametrs from id 8.14
