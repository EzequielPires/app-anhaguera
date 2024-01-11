import 'package:anhangueraonline/widgets/buttons/primary.dart';
import 'package:anhangueraonline/widgets/inputs/select_field_primary.dart';
import 'package:anhangueraonline/widgets/inputs/text_field_primary.dart';
import 'package:flutter/material.dart';

class DrawerFilter extends StatefulWidget {
  final Function updateResults;
  const DrawerFilter({super.key, required this.updateResults});

  @override
  State<DrawerFilter> createState() => _DrawerFilterState();
}

class _DrawerFilterState extends State<DrawerFilter> {
  final TextEditingController findController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Filtrar resultados',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade800)),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            TextFieldPrimary(
                controller: findController,
                label: 'Input',
                placeholder: 'Busque pelo id, número ou protoco'),
            const SizedBox(
              height: 16,
            ),
            const SelectFieldPrimary(label: 'Modalidade'),
            const SizedBox(
              height: 16,
            ),
            const SelectFieldPrimary(label: 'Orgão'),
            const SizedBox(
              height: 16,
            ),
            const SelectFieldPrimary(label: 'Covid-19'),
            const SizedBox(
              height: 16,
            ),
            const Spacer(),
            ButtonPrimary(
              title: 'Buscar',
              onPressed: () {
                widget.updateResults();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
