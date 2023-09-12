import 'package:flutter/material.dart';

class AppBarDefault extends StatelessWidget {
  final String title;
  const AppBarDefault({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      shadowColor: Colors.black26,
      elevation: 2,
      toolbarHeight: 72,
    );
  }
}
