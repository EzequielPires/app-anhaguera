import 'package:anhangueraonline/services/address.dart';
import 'package:anhangueraonline/widgets/inputs/text_field_primary.dart';
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
        isCep
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Endereço com base no CEP:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value == '' || value == null) {
                              return 'Preencha um valor';
                            }
                          },
                          controller: cepController,
                          inputFormatters: [
                            MaskTextInputFormatter(
                                mask: '#####-###',
                                filter: {'#': RegExp(r'[0-9]')})
                          ],
                          onChanged: onChangeCep,
                          decoration: const InputDecoration(
                            hintText: 'Ex.: 75000-100',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black38),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                            ),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                          ),
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
                    ],
                  ),
                ],
              )
            : TextFieldPrimary(
                controller: addressController,
                label: 'Digite o endereço:',
                placeholder: 'Qual o endereço da solicitação',
                required: true,
              ),
        const SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isCep = !isCep;
            });
          },
          child: Text(
            isCep ? 'Não sabe o CEP? Digite o endereço aqui' : 'Digitar CEP',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.green.shade700),
          ),
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
