import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconcolor;
  final double size;
  const AppIcon({Key? key, required this.icon,  this.backgroundColor= const Color(0xFFfcf4e4),  this.iconcolor= const Color (0xFF756d54),  this.size=45}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: size,height: size,decoration: BoxDecoration(borderRadius: BorderRadius.circular(size/2),color:backgroundColor ),child: Icon(icon,color: iconcolor,size:Dimensions.iconSize16 ,),);
  }
}
