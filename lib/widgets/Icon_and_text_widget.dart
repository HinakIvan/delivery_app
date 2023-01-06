import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String  text;

  final Color iconcolor;

  const IconAndTextWidget({Key? key, required this.icon, required this.text, required this.iconcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [Icon(icon,color: iconcolor,size: Dimensions.iconSize24,),SizedBox(width:5,),SmallText(text: text,),],);
  }
}
