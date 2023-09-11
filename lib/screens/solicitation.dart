import 'package:app_anhanguera/models/category.dart';
import 'package:app_anhanguera/widgets/addess_form.dart';
import 'package:app_anhanguera/widgets/buttons/primary.dart';
import 'package:app_anhanguera/widgets/inputs/text_field_primary.dart';
import 'package:app_anhanguera/widgets/inputs/textarea_field.dart';
import 'package:flutter/material.dart';

class SolicitationPage extends StatefulWidget {
  final Category category;
  const SolicitationPage({super.key, required this.category});

  @override
  State<SolicitationPage> createState() => _SolicitationPageState();
}

class _SolicitationPageState extends State<SolicitationPage> {
  late Category category;
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController cep = TextEditingController();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Faça sua solicitação:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldPrimary(
                controller: name,
                label: 'Nome completo:',
                placeholder: 'Qual seu nome completo?',
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldPrimary(
                controller: phone,
                label: 'Telefone:',
                placeholder: '(99) 99999-9999',
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldPrimary(
                controller: email,
                label: 'E-mail:',
                placeholder: 'Qual o seu e-mail?',
              ),
              const SizedBox(
                height: 24,
              ),
              AddressForm(controller: cep),
              const SizedBox(
                height: 24,
              ),
              TextareaField(controller: description, label: 'Descrição', placeholder: 'Fale sobre a ocorrência',),
              const SizedBox(
                height: 24,
              ),
              const ButtonPrimary(title: 'ENVIAR'),
            ],
          ),
        ),
      ),
    );
  }
}
