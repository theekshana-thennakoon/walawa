import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintTxt,
    this.isObscure = false,
  });

  final String hintTxt;
  final bool isObscure;
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       color: AppColors.white,
       borderRadius: BorderRadius.circular(2),
       boxShadow: [
         BoxShadow(
           offset: const Offset(0, 0),
           color: AppColors.ash.withOpacity(0.2),
           blurRadius: 5,
           
         )
       ],
     ),
      child: TextField(
        obscureText: isObscure,
       decoration: InputDecoration(
         hintText: hintTxt,
         hintStyle: const TextStyle(
           color: AppColors.ash,
         ),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(2),
           borderSide: const BorderSide(color: AppColors.white,)
         ),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(2),
           borderSide: const BorderSide(color: AppColors.primaryColor,)
         ),
       ),
      ),
    );
  }
}