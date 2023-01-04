import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;


  const SmallText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 12,this.height=1.2
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontFamily: 'RobotoCondensed',
          fontSize: size,height: height),
    );
  }
}
