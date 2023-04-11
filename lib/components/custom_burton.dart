import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomVutton extends StatelessWidget {
  const CustomVutton({
    super.key,
    required this.text,
    required this.ontap,
  });

  final String text;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
       width: 259,
       height: 50,
       alignment: Alignment.center,
       decoration: BoxDecoration(
         color: AppColors.primaryColor,
         borderRadius: BorderRadius.circular(8)
       ),
       child: Text(text,
           style: const TextStyle(
             fontSize: 18.0,
           fontWeight: FontWeight.bold,
           color: AppColors.white,
       ),
       ),
      ),
    );
  }
}
