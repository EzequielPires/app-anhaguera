import 'package:flutter/material.dart';

class SelectFieldPrimary extends StatefulWidget {
  final String label;
  const SelectFieldPrimary({super.key, required this.label});

  @override
  State<SelectFieldPrimary> createState() => _SelectFieldPrimaryState();
}

class _SelectFieldPrimaryState extends State<SelectFieldPrimary> {
  final TextEditingController controller = TextEditingController();
  late final String label;

  @override
  void initState() {
    label = widget.label;
    super.initState();
  }

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
        DropdownMenu(
          controller: controller,
          expandedInsets: const EdgeInsets.only(left: 0, right: 0),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.black38),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          ),
          hintText: 'Selecione um valor',
          dropdownMenuEntries: [
            DropdownMenuEntry(value: 1, label: 'Value 01'),
            DropdownMenuEntry(value: 2, label: 'Value 02'),
            DropdownMenuEntry(value: 3, label: 'Value 03'),
            DropdownMenuEntry(value: 4, label: 'Value 04'),
          ],
        )
      ],
    );
  }
}
