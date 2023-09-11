import 'package:app_anhanguera/widgets/inputs/text_field_primary.dart';
import 'package:flutter/material.dart';

class AddressForm extends StatefulWidget {
  final TextEditingController controller;
  const AddressForm({super.key, required this.controller});

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TextFieldPrimary(
                controller: controller,
                label: 'Endereço com base no CEP:',
                placeholder: 'Ex.: 75000-100',
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 64,
              width: 64,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(4)),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Não sabe o CEP? Digite o endereço aqui'),
        )
      ],
    );
  }
}
