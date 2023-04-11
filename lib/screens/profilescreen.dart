import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ProfileScreenPage extends StatefulWidget {
  const ProfileScreenPage({super.key});

  @override
  State<ProfileScreenPage> createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      child: Center(
        child: Container(
          child: const Text("Profile Page"),
        ),
      ),
    );
  }
}