import 'package:anhangueraonline/models/publication.dart';
import 'package:anhangueraonline/repositories/publications.dart';
import 'package:anhangueraonline/widgets/cards/publication.dart';
import 'package:flutter/material.dart';

class PublicationsPage extends StatefulWidget {
  const PublicationsPage({super.key});

  @override
  State<PublicationsPage> createState() => _PublicationsPageState();
}

class _PublicationsPageState extends State<PublicationsPage> {
  final PublicationsRepository publicationsRepository =
      PublicationsRepository();
  List<Publication> publications = [];

  Future<void> findProperties() async {
    var res = await publicationsRepository.findAll();
    setState(() {
      publications = res;
    });
  }

  @override
  void initState() {
    findProperties();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notícias',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 2,
        toolbarHeight: 72,
      ),
      body: publications.isEmpty ? const CardPublicationSk() : ListView.builder(
        itemCount: publications.length,
        itemBuilder: (context, index) => CardPublication(publication: publications[index],),
      ),
    );
  }
}
