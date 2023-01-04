import 'package:delivery_app1/home/Food_page_body.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/widgets/Big_text.dart';
import 'package:delivery_app1/home/Food_page_body.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/widgets/Big_text.dart';
import 'package:flutter/material.dart';

import '../widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            child: Container(
          margin: EdgeInsets.only(top: 45, bottom: 15),
          padding: EdgeInsets.only(left: 20, right: 20),
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
                    Icon(Icons.arrow_drop_down_circle_outlined),
                  ])
                ],
              ),
              Center(
                child: Container(
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
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
