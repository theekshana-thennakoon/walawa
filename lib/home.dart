import 'package:flutter/material.dart';
import 'package:walawa/screens/favoritescreen.dart';
import 'package:walawa/screens/homescreen.dart';
import 'package:walawa/screens/profilescreen.dart';
import 'package:walawa/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> screens = const [
    HomeScreenPage(),FavoriteScreenPage(),ProfileScreenPage()
  ];
  int activeIndex = 0;
  void onItemTap(int i){
    setState(() {
      activeIndex = i;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: Container(
        height: 83,
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => onItemTap(0),
              child: Icon(Icons.home,color: activeIndex==0?AppColors.primaryColor:AppColors.ash,),
            ),
            InkWell(
              onTap: () => onItemTap(1),
              child: Icon(Icons.favorite,color: activeIndex==1?AppColors.primaryColor:AppColors.ash,),
            ),
            InkWell(
              onTap: () => onItemTap(2),
              child: Icon(Icons.manage_accounts,color: activeIndex==2?AppColors.primaryColor:AppColors.ash,),
            ),
              
          ],
        ),
      ), 
      body: screens[activeIndex],     
    );
  }
}