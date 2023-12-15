import 'package:anhangueraonline/models/publication.dart';
import 'package:flutter/material.dart';

class CardPublication extends StatelessWidget {
  final Publication publication;
  
  const CardPublication({super.key, required this.publication});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        fontSize: 18,
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
    );
  }
}
