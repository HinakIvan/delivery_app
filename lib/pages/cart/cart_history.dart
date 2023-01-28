import 'package:delivery_app1/controllers/cart_controller.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/Big_text.dart';
import 'package:delivery_app1/widgets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartHistory extends StatelessWidget {
  const CartHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var getCartHistoryList = Get.find<CartController>().getCartHistoryList();

    // Map<String, int> cartItemsPerOrder = Map();
    // for (int i = 0; i < getCartHistoryList.length; i++) {
    //   if (cartItemsPerOrder.containsKey(getCartHistoryList[i].time!)) {
    //     cartItemsPerOrder.update(
    //         getCartHistoryList[i].time!, (value) => ++value);
    //   } else {
    //     cartItemsPerOrder.putIfAbsent(getCartHistoryList[i].time!, () => 1);
    //   }
    // }
    //
    // List<int> cartOrderTimeToList() {
    //   return cartItemsPerOrder.entries.map((e) => e.value).toList();
    // }
    //
    // List<int> itemsPerOrder = cartOrderTimeToList();
    //
    // var listCounter = 0;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Dimensions.height100,
            width: double.maxFinite,
            padding: EdgeInsets.only(top: Dimensions.height45),
            color: AppColors.mainColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BigText(
                  text: ' Cart History',
                  color: Colors.white,
                ),
                AppIcon(
                    icon: Icons.shopping_cart_outlined,
                    iconcolor: AppColors.mainColor,
                    backgroundColor: AppColors.Color1)
              ],
            ),
          ),
          // Expanded(
          //   child: Container(
          //     margin: EdgeInsets.only(
          //         top: Dimensions.height20,
          //         left: Dimensions.width20,
          //         right: Dimensions.width20),
          //     child: ListView(
          //       children: [
          //         for (int i = 0; i < itemsPerOrder.length!; i++)
          //           Container(
          //             margin: EdgeInsets.only(bottom: Dimensions.height20),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 BigText(text: 'text'),
          //                 Row(
          //                   children: [
          //                     Wrap(
          //                       direction: Axis.horizontal,
          //                       children:
          //                           // List.generate(itemsPerOrder[i], (index) {
          //                           //   if(listCounter<getCartHistoryList.length){
          //                           //     listCounter++;
          //                           //   }
          //                         return Container(
          //                           height: Dimensions.height45 * 2,
          //                           width: Dimensions.width45 * 2,
          //                           decoration: BoxDecoration(
          //                               image: DecorationImage(
          //                                   image: NetworkImage(
          //                                       // getCartHistoryList[listCounter-1]
          //                                           .imageUrl))),
          //                         );
          //                       }),
          //                     )
          //                   ],
          //                 )
          //               ],
          //             ),
          //           )
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
