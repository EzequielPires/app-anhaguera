import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String title;
  const ButtonPrimary({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: FilledButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
          )
        ),
        child: Text(title, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),),
      ),
    );
  }
}
