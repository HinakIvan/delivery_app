import 'package:get/get.dart';

class Dimensions{
static double screenHeight = Get.context!.height;
static double screenWidth = Get.context!.width;
//exellent example for making size for every device 2.12.34
  static double pageView = screenHeight/2.609;
  static double pageViewContainer = screenHeight/3.795;
static double pageViewTextContainer = screenHeight/7.59;
//dynamic width&heith for padding and margin
static double height10 = screenHeight/83.490;
static double height20 = screenHeight/41.745;
static double height15 = screenHeight/55.66;
static double height30=screenHeight/27.83;
  static double height45=screenHeight/18.55;
  static double height120=screenHeight/6.958;
  static double height100=screenHeight/8.349;
  static double height350=screenHeight/2.385;

  static double width10 = screenWidth/83.490;
  static double width20 = screenWidth/41.745;
  static double width15 = screenWidth/55.66;
  static double width30=screenWidth/27.83;
  static double width45=screenWidth/18.55;
  static double width120=screenWidth/6.958;
  static double width200=screenWidth/4.175;


  static double font20 = screenHeight/41.745;
  static double font26 = screenHeight/32.1;

  static double radius5=screenHeight/166.98;
  static double radius15=screenHeight/55.66;
  static double radius20=screenHeight/41.745;
  static double radius30=screenHeight/27.83;

//  icon size
static double iconSize24=screenHeight/34.79;
  static double iconSize16=screenHeight/52.18;

}