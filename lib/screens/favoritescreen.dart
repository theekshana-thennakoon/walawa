import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FavoriteScreenPage extends StatefulWidget {
  const FavoriteScreenPage({super.key});

  @override
  State<FavoriteScreenPage> createState() => _FavoriteScreenPageState();
}

class _FavoriteScreenPageState extends State<FavoriteScreenPage> {
  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      child: Center(
        child: Container(
          child: const Text("Favourite Page"),
        ),
      ),
    );
  }
}