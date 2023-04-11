import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text,{
    super.key,
    this.textAlign,
    this.fSize = 40,
    this.color = AppColors.primaryColor,
    required TextStyle style,
  });

  final String text;
  final TextAlign? textAlign;
  final double fSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fSize,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}