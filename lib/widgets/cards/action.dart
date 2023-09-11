import 'package:app_anhanguera/models/category.dart';
import 'package:flutter/material.dart';

class CardAction extends StatelessWidget {
  final Category category;
  const CardAction({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
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
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                category.image!,
                height: 72,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
