import 'package:delivery_app1/base/no_data_page.dart';
import 'package:delivery_app1/controllers/cart_controller.dart';
import 'package:delivery_app1/controllers/popular_product_controller.dart';
import 'package:delivery_app1/home/main_food_page.dart';
import 'package:delivery_app1/routes/route_helper.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/Big_text.dart';
import 'package:delivery_app1/widgets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/small_text.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20 * 2.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [GestureDetector(onTap: (){Get.back();},
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
            GetBuilder<
                CartController>(builder: (_cartController) {
              return _cartController.getItems.length > 0 ? Positioned(
                  top: Dimensions.height20 * 4.5,
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.only(top: Dimensions.height15),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child:
                      GetBuilder<CartController>(builder: (cartController) {
                        var _cartList = cartController.getItems;
                        return ListView.builder(
                            itemCount: cartController.getItems.length,
                            itemBuilder: (_, index) {
                              return Container(
                                  width: double.maxFinite,
                                  height: Dimensions.height100,
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          //first of all we find index of cart list and then we find product which relates to popular or recommended product
                                          // var popularIndex = Get
                                          //     .find<PopularProductController>()
                                          //     .productList
                                          //     .indexOf(_cartList[index].product!);
                                          // if(popularIndex>=0){Get.toNamed(RouteHelper.getPopularFood(popularIndex));}
                                          // else {var recommendedIndex=Get.find<PopularProductController>().favoriteItem.indexOf(_cartList[index].product!);
                                          // Get.toNamed(RouteHelper.getRecommendedFood(recommendedIndex));
                                          // }
                                        },
                                        child: Container(
                                          width: Dimensions.height100,
                                          height: Dimensions.height100,
                                          margin: EdgeInsets.only(
                                              bottom: Dimensions.height10),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                      cartController
                                                          .getItems[index]
                                                          .imageUrl)),
                                              borderRadius: BorderRadius
                                                  .circular(
                                                  Dimensions.radius20),
                                              color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        width: Dimensions.width10,
                                      ),
                                      Expanded(
                                          child: Container(
                                            height: Dimensions.height100,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                BigText(
                                                  text: cartController
                                                      .getItems[index].title,
                                                  color: Colors.black54,
                                                ),
                                                SmallText(text: "Spicy"),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    BigText(
                                                      text: cartController
                                                          .getItems[index].price
                                                          .toString(),
                                                      color: Colors.redAccent,
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: Dimensions
                                                              .height10,
                                                          bottom: Dimensions
                                                              .height10,
                                                          left: Dimensions
                                                              .width10,
                                                          right: Dimensions
                                                              .width10),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              Dimensions
                                                                  .radius20),
                                                          color: Colors.white),
                                                      child: Row(
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () {
                                                              cartController
                                                                  .addItem(
                                                                  _cartList[index]
                                                                      .product!,
                                                                  -1);
                                                              // popularProduct.setQuantity(
                                                              //     false);
                                                            },
                                                            child: Icon(
                                                              Icons.remove,
                                                              color: Colors
                                                                  .grey,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width:
                                                            Dimensions.width10 /
                                                                2,
                                                          ),
                                                          BigText(
                                                              text: _cartList[index]
                                                                  .quantity
                                                                  .toString()
                                                            // popularProduct
                                                            //     .inCartItems.toString()
                                                          ),
                                                          SizedBox(
                                                            width:
                                                            Dimensions.width10 /
                                                                2,
                                                          ),
                                                          GestureDetector(
                                                              onTap: () {
                                                                cartController
                                                                    .addItem(
                                                                    _cartList[
                                                                    index]
                                                                        .product!,
                                                                    1);

                                                                // popularProduct
                                                                //     .setQuantity(
                                                                //     true);
                                                              },
                                                              child: Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .grey,
                                                              ))
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ))
                                    ],
                                  )
                                // Container(height: Dimensions.height100,
                                //   width: Dimensions.width200,
                                //   color: Colors.lightBlueAccent,
                                //   margin: EdgeInsets.only(bottom: Dimensions.height10),),
                              );
                            });
                      }),
                    ),
                  )) : NoDataPage(text: 'Your cart is empty!');
            })
          ],
        ),
        bottomNavigationBar:
        GetBuilder<CartController>(builder: (cartController) {
          return Container(
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
            child:cartController.getItems.length>0?Row(
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
                      SizedBox(
                        width: Dimensions.width10 / 2,
                      ),
                      BigText(
                          text: "\$" + cartController.totalAmount.toString()),
                      SizedBox(
                        width: Dimensions.width10 / 2,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // cartController.addToHistory();
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    child: GestureDetector(
                      onTap: () {
                        // cartController.addToHistory();
                        // Get.toNamed(RouteHelper.getAddressPage());
                      },
                      child: BigText(
                        text: 'Order',
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(Dimensions.radius20),
                        color: AppColors.mainColor),
                  ),
                )
              ],
            ):Container() ,
          );
        }));
  }
}
