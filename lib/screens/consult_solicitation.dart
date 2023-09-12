import 'package:app_anhanguera/models/solicitation.dart';
import 'package:app_anhanguera/repositories/solicitations.dart';
import 'package:app_anhanguera/widgets/cards/solicitation.dart';
import 'package:flutter/material.dart';

class ConsultSolicitation extends StatefulWidget {
  const ConsultSolicitation({super.key});

  @override
  State<ConsultSolicitation> createState() => _ConsultSolicitationState();
}

class _ConsultSolicitationState extends State<ConsultSolicitation> {
  final SolicitationsRepository repository = SolicitationsRepository();
  final TextEditingController controller = TextEditingController();
  Solicitation? solicitation;
  bool isLoading = false;
  bool cepNotFound = false;

  Future<void> onSubmit() async {
    setState(() {
      isLoading = true;
      solicitation = null;
      cepNotFound = false;
    });

    final response = await repository.findByProtocol(controller.value.text);

    print(response);

    if (response != null) {
      setState(() {
        solicitation = response;
      });
    } else {
      setState(() {
        cepNotFound = true;
      });
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Consultar Solicitação',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 2,
        toolbarHeight: 72,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Protocolo:',
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
                    controller: controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Busque pelo protocolo da solicitação',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black38),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      border: OutlineInputBorder(),
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
                          onPressed: onSubmit,
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
              height: 24,
            ),
            solicitation != null
                ? CardSolicitation(solicitation: solicitation!)
                : Container(),
            cepNotFound
                ? Container(
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(.1),
                        borderRadius: BorderRadius.circular(4)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: const Text(
                      'Solicitação não encontrada',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
