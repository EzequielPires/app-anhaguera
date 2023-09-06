import 'package:app_anhanguera/models/category.dart';
import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final Category category;
  const CardCategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('deu certo'),
      child: Container(
        height: 300,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: .8,
                offset: Offset(0, 2),
                spreadRadius: 0)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              category.image!,
              height: 32,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              category.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
