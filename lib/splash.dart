import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:walawa/login.dart';
import 'package:walawa/utils/assets_constent.dart';
import 'package:walawa/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 50),
               child: FadeInDown(child: Image.asset(AssetsConstant.logo,)),
             ),
             FadeInUp(
               child: const Text("Walawa",
               style: TextStyle(
                fontSize: 40.0,
                         fontWeight: FontWeight.bold,
                         color: AppColors.primaryColor,
                     ),
                     ),
             ),
          ]
        ),
      ),
    );
  }
}