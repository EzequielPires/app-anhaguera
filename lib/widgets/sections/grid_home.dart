import 'package:anhangueraonline/models/category.dart';
import 'package:anhangueraonline/repositories/categories.dart';
import 'package:anhangueraonline/widgets/cards/category.dart';
import 'package:flutter/material.dart';

class SectionGridHome extends StatelessWidget {
  const     SectionGridHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      childAspectRatio: .9,
      crossAxisCount: 3,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: [
        ...categories.map((category) => CardCategory(category: category))
      ],
    );
  }
}
