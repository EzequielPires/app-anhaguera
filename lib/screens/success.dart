import 'package:anhangueraonline/models/solicitation.dart';
import 'package:anhangueraonline/screens/home.dart';
import 'package:anhangueraonline/screens/solicitation.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  final Solicitation solicitation;
  const SuccessPage({super.key, required this.solicitation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/success.png',
              width: 264,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Solicitação realizada com sucesso!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Protocolo: ${solicitation.protocol}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: FilledButton(
                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home(),)),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)))),
                  child: const Text(
                    'Início',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: OutlinedButton(
                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SolicitationPage(category: solicitation.type!),)),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)))),
                  child: const Text(
                    'Nova solicitação',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
