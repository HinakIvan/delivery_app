import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/Big_text.dart';
import 'package:delivery_app1/widgets/app_icon.dart';
import 'package:delivery_app1/widgets/expandable_text.dart';
import 'package:delivery_app1/widgets/small_text.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.height45 * 2,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height20),
              child: Container(
                child: Center(
                    child: BigText(
                        size: Dimensions.font26, text: 'Europian Side')),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: Dimensions.height10 / 2,
                  bottom: Dimensions.height10,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        topLeft: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: Color(0xFFFFF176),
            expandedHeight: Dimensions.height350 * 0.8,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/breakfast0.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: ExpandableTextWidget(
                  text:
                      "Pancakes pump iron? Yep, it's true! A serving of whole-wheat pancakes will net you about 3 milligrams of this essential mineral, which is between 16 and 38 percent of the iron you need to consume daily, depending on your age and sex, while buttermilk pancakes have almost 2 milligrams.Like carbs, iron contributes to the energizing properties of pancakes, since it plays a key role in oxygenating your tissues so they can produce the fuel they need. Iron is also important for the function of certain immune cells, so getting enough of it in your diet can help you fight off disease.You might not necessarily think of pancakes as a bone-building food, but they're a surprisingly good source of calcium. A serving of whole-wheat pancakes has about 250 milligrams of calcium, or around one-quarter of the calcium you need for the day, while buttermilk pancakes have around 180 milligrams, or 18 percent of your daily needs.n addition to it's obvious bone-friendly benefits, calcium helps your nerves and muscles function properly, and it might also help control your blood pressure, the Linus Pauling Institute reports.Your pancake brekkie may not feel complete without syrup, but if you pour on as much syrup as you want, you'll turn your meal into a sugar bomb. A single tablespoon of maple syrup has 52 calories and 12 grams of sugar. But if you accidentally pour a quarter-cup, you're looking at 216 calories and 50 grams of sugar from the syrup alone. That's bad news for your health, as added sugar (the role maple syrup plays on pancakes) is linked to obesity, heart disease and Type 2 diabetes.Pancakes pump iron? Yep, it's true! A serving of whole-wheat pancakes will net you about 3 milligrams of this essential mineral, which is between 16 and 38 percent of the iron you need to consume daily, depending on your age and sex, while buttermilk pancakes have almost 2 milligrams.Like carbs, iron contributes to the energizing properties of pancakes, since it plays a key role in oxygenating your tissues so they can produce the fuel they need. Iron is also important for the function of certain immune cells, so getting enough of it in your diet can help you fight off disease.You might not necessarily think of pancakes as a bone-building food, but they're a surprisingly good source of calcium. A serving of whole-wheat pancakes has about 250 milligrams of calcium, or around one-quarter of the calcium you need for the day, while buttermilk pancakes have around 180 milligrams, or 18 percent of your daily needs.n addition to it's obvious bone-friendly benefits, calcium helps your nerves and muscles function properly, and it might also help control your blood pressure, the Linus Pauling Institute reports.Your pancake brekkie may not feel complete without syrup, but if you pour on as much syrup as you want, you'll turn your meal into a sugar bomb. A single tablespoon of maple syrup has 52 calories and 12 grams of sugar. But if you accidentally pour a quarter-cup, you're looking at 216 calories and 50 grams of sugar from the syrup alone. That's bad news for your health, as added sugar (the role maple syrup plays on pancakes) is linked to obesity, heart disease and Type 2 diabetes.",
                ),
              ),
            ]),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width45,
                right: Dimensions.width45,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  size: Dimensions.iconSize16 * 3,
                  iconcolor: Colors.white,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                ),
                BigText(text: '\$12.88' + 'X' + '0',color: AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(
                  size: Dimensions.iconSize16 * 3,
                  iconcolor: Colors.white,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                )
              ],
            ),
          ),
          Container(
            height: Dimensions.height100,
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
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                 child: Icon(Icons.favorite,color: AppColors.mainColor,),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
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
          )
        ],
      ),
    );
  }
}
