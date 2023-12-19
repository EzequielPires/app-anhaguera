import 'package:anhangueraonline/models/phone.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardPhone extends StatelessWidget {
  final Phone phone;
  const CardPhone({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
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
      child: InkWell(
        onTap: _launchPhone,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                phone.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(phone.value),
          ],
        ),
      ),
    );
  }

  _launchPhone() async {
    final phoneNumber = Uri.parse(
        'tel:${phone.value}');
    if (await canLaunchUrl(phoneNumber)) {
      await launchUrl(phoneNumber);
    } else {
      throw 'Não foi possível abrir o número de telefone.';
    }
  }
}
