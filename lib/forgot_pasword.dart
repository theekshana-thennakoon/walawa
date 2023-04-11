import 'package:flutter/material.dart';
import 'package:walawa/utils/assets_constent.dart';
import 'package:walawa/utils/colors.dart';

import 'components/custom_burton.dart';
import 'components/custom_text.dart';
import 'components/custom_text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 52,),
                 const CustomText(
                  "Forgot Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                    ),
                 ),
                 const SizedBox(height: 40,),
                 Image.asset(AssetsConstant.logo,width: 202,height: 138,),
                 const SizedBox(height: 39,),
                 const Text("If oyu didn't remember your password? please type your email bellow and click send button. After that you will received a link to change your password.",
                   textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: AppColors.primaryColor,
                      ),
                  ),
                  const SizedBox(height: 39,),
                 const CustomTextField(hintTxt: "Email",),
                 const SizedBox(height: 8,),
                 CustomVutton(text: "Send",ontap:(){} ,),
              ]
            ),
          ),
        ),
      ),
    );
  }
}

