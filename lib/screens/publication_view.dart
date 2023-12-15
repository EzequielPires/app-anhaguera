import 'package:anhangueraonline/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class PublicationViewPage extends StatefulWidget {
  final Publication publication;
  const PublicationViewPage({super.key, required this.publication});

  @override
  State<PublicationViewPage> createState() => _PublicationViewPageState();
}

class _PublicationViewPageState extends State<PublicationViewPage> {
  late final Publication publication;

  @override
  void initState() {
    publication = widget.publication;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(publication.category.name,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54)),
                        Text(publication.title,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.green)),
                        Text(publication.introduction,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.black87)),
                      ],
                    ),
                  ),
                  Image.network(
                    'https://blog.imaginie.com.br/wp-content/uploads/2020/05/noticia.jpg',
                    height: 264,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: HtmlWidget(publication.content),),
            const SizedBox(height: 24,),
          ],
        ),
      ),
    );
  }
}
