import 'package:app_anhanguera/services/address.dart';
import 'package:app_anhanguera/widgets/inputs/text_field_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddressForm extends StatefulWidget {
  final TextEditingController controller;
  final Function(String value)? onChange;

  const AddressForm({super.key, required this.controller, this.onChange});

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  final AddressService _addressService = AddressService();
  final TextEditingController cepController = TextEditingController();
  late final Function(String value)? onChange;
  TextEditingController addressController = TextEditingController();
  bool isCep = true;
  bool cepNotFound = false;
  bool isLoading = false;

  Future<void> onChangeCep(String value) async {
    if (value.length == 9) {
      setState(() {
        isLoading = true;
      });
      String? res = await _addressService.getCep(value);
      if (onChange != null) {
        onChange!(value);
      }
      setState(() {
        addressController.text = res ?? '';
        cepNotFound = res == null ? true : false;
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    addressController = widget.controller;
    onChange = widget.onChange;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: isCep
              ? [
                  Expanded(
                    child: TextFieldPrimary(
                      controller: cepController,
                      label: 'Endereço com base no CEP:',
                      placeholder: 'Ex.: 75000-100',
                      onChange: onChangeCep,
                      formatter: [
                        MaskTextInputFormatter(
                            mask: '#####-###', filter: {'#': RegExp(r'[0-9]')})
                      ],
                      required: true,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(4)),
                    child: isLoading
                        ? const CircularProgressIndicator()
                        : IconButton(
                            onPressed: () =>
                                onChangeCep(cepController.value.text),
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 32,
                            ),
                          ),
                  ),
                ]
              : [
                  Expanded(
                    child: TextFieldPrimary(
                      controller: addressController,
                      label: 'Digite o endereço:',
                      placeholder: 'Qual o endereço da solicitação',
                      required: true,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(4)),
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
          height: 8,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              isCep = !isCep;
            });
          },
          child: Text(
              isCep ? 'Não sabe o CEP? Digite o endereço aqui' : 'Digitar CEP'),
        ),
        const SizedBox(
          height: 8,
        ),
        addressController.text.isNotEmpty
            ? Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.05),
                    borderRadius: BorderRadius.circular(4)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Text(addressController.text),
              )
            : Container(),
        cepNotFound
            ? Container(
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(.1),
                    borderRadius: BorderRadius.circular(4)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: const Text(
                  'CEP não encontrado',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              )
            : Container()
      ],
    );
  }
}
