import 'package:anhangueraonline/models/category.dart';
import 'package:anhangueraonline/repositories/categories.dart';
import 'package:anhangueraonline/widgets/cards/category.dart';
import 'package:anhangueraonline/widgets/cards/document_category.dart';
import 'package:flutter/material.dart';

class SectionGridDocumentsCategories extends StatelessWidget {
  const SectionGridDocumentsCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      childAspectRatio: 1.2,
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: [
        ...documentCategories
            .map((category) => CardDocumentCategory(category: category))
      ],
    );
  }
}
