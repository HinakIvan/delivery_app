import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/route_helper.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import '../widgets/app_icon.dart';

class NoDataPage extends StatelessWidget {
  final String text;
  final String imgPath;

  const NoDataPage(
      {Key? key,
      required this.text,
      this.imgPath = 'assets/image/empty_shopping_cart.jpg'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Positioned(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height20 * 2.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [    GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: AppIcon(
                      icon: Icons.arrow_back_ios_new_outlined,
                      iconcolor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      size: Dimensions.iconSize30),
                ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.getInitial());
                    },
                    child: AppIcon(
                        icon: Icons.home_outlined,
                        iconcolor: Colors.white,
                        backgroundColor: AppColors.mainColor,
                        size: Dimensions.iconSize30),
                  ),

                ],
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                imgPath,
                height: MediaQuery.of(context).size.height * 0.32,
                width: MediaQuery.of(context).size.width * 0.32,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    color: Theme.of(context).disabledColor),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ]));
  }
}
