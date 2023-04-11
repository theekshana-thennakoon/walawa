import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  
  @override
  Widget build(BuildContext context) {
    final fruits = ['Apple','Banana','mango','Pine Apple','Orange'];
    return FadeInRight(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.menu,color:AppColors.primaryColor,),
                  Icon(Icons.logout,color:AppColors.primaryColor,),
                ],
              ),
              const SizedBox(height: 10,),
              const Text("Walawa",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
              const SizedBox(height: 41,),
              const PostGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

class PostGrid extends StatelessWidget {
  const PostGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
        childAspectRatio: 1,
        mainAxisSpacing: 44),
      itemBuilder: (context,i){
        return Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: const [
                Text("Theekshana Thennakoon",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 12,),
                Text("An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today. Apples have been grown for thousands of years in Asia and Europe and were brought to North America by European colonists. Apples have religious and mythological significance in many cultures, including Norse, Greek, and European Christian tradition.",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}