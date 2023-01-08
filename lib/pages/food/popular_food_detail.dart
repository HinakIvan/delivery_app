import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/app_column.dart';
import 'package:delivery_app1/widgets/app_icon.dart';
import 'package:delivery_app1/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/Big_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.height350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/breakfast0.jpg'))),
              )),
          //icon widget
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              top: Dimensions.height350 - 20,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        topLeft: Radius.circular(Dimensions.radius20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(
                      text: 'Europian Side',
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(text: 'Introduce'),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(
                        child: SingleChildScrollView(
                            child: ExpandableTextWidget(
                      text:
                          'Europian pancakes,popular in France, Belgium, Switzerland and Portugal, are made from flour, milk, and eggs.They are thin pancakes and are served with a sweet (fruit, ice cream, jam, chocolate spread, powdered sugar) or savoury filling (cheese, ham, seafood, spinach). ',
                    )))
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.height120,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.ButtomBackGroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            )
          ],
        ),
      ),
    );
  }
}
