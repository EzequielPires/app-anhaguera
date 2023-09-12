import 'package:app_anhanguera/repositories/phones.dart';
import 'package:app_anhanguera/widgets/cards/phone.dart';
import 'package:flutter/material.dart';

class PhonesPage extends StatefulWidget {
  const PhonesPage({super.key});

  @override
  State<PhonesPage> createState() => _PhonesPageState();
}

class _PhonesPageState extends State<PhonesPage> {
  @override
  Widget build(BuildContext context) {
    final phones = PhonesRepository().phones;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Telefones Úteis',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 12)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList.separated(
              itemCount: phones.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 16,
              ),
              itemBuilder: (context, index) => CardPhone(phone: phones[index]),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 12)),
        ],
      ),
    );
  }
}
