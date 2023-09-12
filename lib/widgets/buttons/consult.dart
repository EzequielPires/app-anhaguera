import 'package:app_anhanguera/screens/consult_solicitation.dart';
import 'package:flutter/material.dart';

class ButtonConsult extends StatelessWidget {
  const ButtonConsult({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: FilledButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ConsultSolicitation())),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
          )
        ),
        child: const Text('CONSULTE SUA SOLICITAÇÃO', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),),
      ),
    );
  }
}
