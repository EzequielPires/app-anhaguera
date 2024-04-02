import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String title;
  final Function? onPressed;
  final bool? disabled;
  final bool? isLoading;
  const ButtonPrimary(
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
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)))),
        child: isLoading == true
            ? const CircularProgressIndicator(color: Colors.white,)
            : Text(
                disabled == false || disabled == null ? title : '',
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
      ),
    );
  }
}
