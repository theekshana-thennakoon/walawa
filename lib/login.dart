import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:walawa/forgot_pasword.dart';
import 'package:walawa/home.dart';
import 'package:walawa/signup.dart';
import 'package:walawa/utils/assets_constent.dart';
import 'package:walawa/utils/colors.dart';

import 'components/custom_burton.dart';
import 'components/custom_text.dart';
import 'components/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    "Login",
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
                   const CustomTextField(hintTxt: "Email",),
                   const SizedBox(height: 8,),
                   const CustomTextField(hintTxt: "Password",isObscure: true,),
                   const SizedBox(height: 8,),
                   InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPassword())),
                     child: const Align(
                      alignment: Alignment.centerRight,
                       child: Text("Forget Password ?",
                       textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: AppColors.primaryColor,
                          ),
                      ),
                     ),
                   ),
                   const SizedBox(height: 30,),
                   CustomVutton(text: "Login",ontap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                   } ,),
                   const SizedBox(height: 15,),
                   InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupScreen())),
                     child: const Text("I Haven't Account",
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

