import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:walawa/home.dart';
import 'package:walawa/login.dart';
import 'package:walawa/utils/assets_constent.dart';
import 'package:walawa/utils/colors.dart';

import 'components/custom_burton.dart';
import 'components/custom_text.dart';
import 'components/custom_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInRight(
      child: Scaffold(
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
                    "Signup",
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
                   const CustomTextField(hintTxt: "Name",),
                   const SizedBox(height: 8,),
                   const CustomTextField(hintTxt: "Email",),
                   const SizedBox(height: 8,),
                   const CustomTextField(hintTxt: "Password",isObscure: true,),
                   const SizedBox(height: 8,),
                   CustomVutton(text: "Signup",ontap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                   } ,),
                   const SizedBox(height: 15,),
                   InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen())),
                     child: const Text("Already Have an Account",
                       textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: AppColors.primaryColor,
                          ),
                      ),
                   ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

