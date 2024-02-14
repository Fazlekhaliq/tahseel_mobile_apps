import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final String? fontFamily;
  const CustomText({super.key, required this.text, this.fontWeight, this.fontSize, this.color, this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      fontSize: fontSize,
      color: color,
    ),);
  }
}
