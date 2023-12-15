import 'package:anhangueraonline/models/solicitation.dart';
import 'package:flutter/material.dart';

class CardSolicitation extends StatelessWidget {
  final Solicitation solicitation;
  const CardSolicitation({super.key, required this.solicitation});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: .8,
                offset: Offset(0, 2),
                spreadRadius: 0)
          ],
        ),
        child: Column(
          children: [
            Text(
              solicitation.type!.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const Divider(),
            Row(
              children: [
                const Text(
                  'Protocolo:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(solicitation.protocol!),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Endereço:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(solicitation.address!),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Text(
                  'Status:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(solicitation.status!),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Text(
                  'Solicitante:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(solicitation.requester!.name!),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
