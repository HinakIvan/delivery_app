import 'dart:async';

import 'package:delivery_app1/routes/route_helper.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    Timer(Duration(seconds: 3),()=>Get.offNamed(RouteHelper.getInitial()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: Center(
              child: Container(
                width: Dimensions.height100 * 3.5,
                height: Dimensions.height100 * 1.5,
                margin: EdgeInsets.only(bottom: Dimensions.height10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/logo.jpg')),
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white),
              ),
            ),
          ),
          Center(
            child: Container(
              width: Dimensions.height100 * 2,
              height: Dimensions.height100 * 1.5,
              margin: EdgeInsets.only(bottom: Dimensions.height10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/caption.jpg')),
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
