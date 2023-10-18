import 'dart:io';

import 'package:anhangueraonline/models/category.dart';
import 'package:anhangueraonline/models/requester.dart';
import 'package:anhangueraonline/models/solicitation.dart';
import 'package:anhangueraonline/repositories/solicitations.dart';
import 'package:anhangueraonline/screens/success.dart';
import 'package:anhangueraonline/widgets/addess_form.dart';
import 'package:anhangueraonline/widgets/buttons/image_picker.dart';
import 'package:anhangueraonline/widgets/buttons/primary.dart';
import 'package:anhangueraonline/widgets/inputs/text_field_primary.dart';
import 'package:anhangueraonline/widgets/inputs/textarea_field.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SolicitationPage extends StatefulWidget {
  final Category category;
  const SolicitationPage({super.key, required this.category});

  @override
  State<SolicitationPage> createState() => _SolicitationPageState();
}

class _SolicitationPageState extends State<SolicitationPage> {
  late Category category;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  List<File> files = [];
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      category = widget.category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 2,
        toolbarHeight: 72,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Faça sua solicitação:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextFieldPrimary(
                      controller: name,
                      label: 'Nome completo:',
                      placeholder: 'Qual seu nome completo?',
                      required: true,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextFieldPrimary(
                      controller: phone,
                      label: 'Telefone:',
                      placeholder: '(99) 99999-9999',
                      required: true,
                      formatter: [
                        MaskTextInputFormatter(
                            mask: '(##) #####-####',
                            filter: {'#': RegExp(r'[0-9]')})
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextFieldPrimary(
                      controller: email,
                      label: 'E-mail:',
                      placeholder: 'Qual o seu e-mail?',
                      required: true,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    AddressForm(
                      controller: address,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextareaField(
                      controller: description,
                      label: 'Descrição',
                      placeholder: 'Fale sobre a ocorrência',
                      required: true,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(right: 16, left: 16, bottom: 6),
              child: const Text(
                'Envie fotos do local da ocorrência de sua solicitação:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: [
                ...files.map((image) => Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Image.file(image, fit: BoxFit.cover),
                    )),
                ButtonImagePicker(
                  onImageSelected: (file) {
                    setState(() {
                      files.add(file);
                    });
                  },
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  ButtonPrimary(
                    title: 'ENVIAR',
                    isLoading: isLoading,
                    onPressed: onSubmit,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> onSubmit() async {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      final repository = SolicitationsRepository();
      setState(() {
        isLoading = true;
      });

      Requester requester =
          Requester(name: name.text, phone: phone.text, email: email.text);
      Solicitation solicitation = Solicitation(
          requester: requester,
          type: category,
          address: address.text,
          description: description.text,
          images: files);
      
      final res = await repository.create(solicitation);
      if(res is Solicitation) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SuccessPage(solicitation: res),));
      }
      setState(() {
        isLoading = false;
      });
    }
  }
}
