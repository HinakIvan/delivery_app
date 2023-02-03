import 'package:delivery_app1/controllers/auth_controller.dart';
import 'package:delivery_app1/controllers/cart_controller.dart';
import 'package:delivery_app1/controllers/popular_product_controller.dart';
import 'package:delivery_app1/home/home_page.dart';
import 'package:delivery_app1/home/main_food_page.dart';
import 'package:delivery_app1/home/main_food_page.dart';
import 'package:delivery_app1/pages/auth/sign_in_page.dart';
import 'package:delivery_app1/pages/auth/sign_up_page.dart';
import 'package:delivery_app1/pages/food/recommended_food_detail.dart';
import 'package:delivery_app1/pages/food/popular_food_detail.dart';
import 'package:delivery_app1/pages/splash/splash_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:delivery_app1/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependecies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.find<CartController>().getCartData();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: SplashScreen(),
      home: SignInPage(),
      // initialRoute: RouteHelper.getSplashPage(),
      getPages: RouteHelper.routes,
    );
  }
}
