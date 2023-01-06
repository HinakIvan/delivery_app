import 'package:delivery_app1/home/Food_page_body.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/widgets/Big_text.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import '../widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print('current height is'+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(children: [
        Container(
            child: Container(
          margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
          padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(
                    text: 'Czech',
                    color: AppColors.mainColor,
                  ),
                  Row(children: [
                    SmallText(
                      text: 'Brno',
                      color: Colors.black54,
                    ),
                    Icon(Icons.arrow_drop_down,size: Dimensions.iconSize24,),
                  ])
                ],
              ),
              Center(
                child: Container(
                  child: Icon(
                    Icons.search,
                    color: Colors.white,size: Dimensions.iconSize24,
                  ),
                  width: Dimensions.height45,
                  height: Dimensions.height45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor),
                ),
              )
            ],
          ),
        )),FoodPageBody()
      ]),
    );
  }
}
