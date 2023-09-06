import 'package:app_anhanguera/models/category.dart';
import 'package:app_anhanguera/repositories/categories.dart';
import 'package:app_anhanguera/widgets/cards/category.dart';
import 'package:flutter/material.dart';

class SectionGridHome extends StatelessWidget {
  const SectionGridHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: .9,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: [
              ...categories.map((category) => CardCategory(category: category))
            ],
          ),
    );
  }
}