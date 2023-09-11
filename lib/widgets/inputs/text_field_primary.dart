import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextFieldPrimary extends StatelessWidget {
  final String label;
  final String? placeholder;
  final TextEditingController controller;
  final bool obscureText;
  final bool? required;
  final List<TextInputFormatter>? formatter;
  final Function(String value)? onComplete;
  final Function(String value)? onChange;

  const TextFieldPrimary({
    super.key,
    required this.controller,
    required this.label,
    this.obscureText = false,
    this.required,
    this.formatter,
    this.placeholder,
    this.onComplete,
    this.onChange
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          validator: (value) {
            if (required == true && (value == '' || value == null)) {
              return 'Preencha um valor';
            }
          },
          controller: controller,
          inputFormatters: formatter,
          onEditingComplete: () => onComplete != null ? onComplete!(controller.value.text) : null,
          onChanged: (String value) => onChange != null ? onChange!(value) : null,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: placeholder ?? '',
            hintStyle: const TextStyle(fontWeight: FontWeight.w400, color: Colors.black38),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
            border: const OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
