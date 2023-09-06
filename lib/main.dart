import 'package:app_anhanguera/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      title: 'Prefeitura de anhaguera',
      home: const Home(),
    ),
  );
}
