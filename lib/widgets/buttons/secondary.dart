import 'package:flutter/material.dart';

class ButtonSecondary extends StatelessWidget {
  final String title;
  final Function? onPressed;
  final bool? disabled;
  final bool? isLoading;
  const ButtonSecondary(
      {super.key,
      required this.title,
      this.onPressed,
      this.disabled,
      this.isLoading});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: FilledButton(
        onPressed: onPressed != null && (disabled == false || disabled == null)
            ? () => onPressed!()
            : null,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)))),
        child: isLoading == true
            ? const CircularProgressIndicator()
            : Text(
                disabled == false || disabled == null ? title.toUpperCase() : '',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
      ),
    );
  }
}
