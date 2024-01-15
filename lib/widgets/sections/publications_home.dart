import 'package:anhangueraonline/models/publication.dart';
import 'package:anhangueraonline/repositories/publications.dart';
import 'package:anhangueraonline/widgets/cards/publication_small.dart';
import 'package:flutter/material.dart';

class SectionPublicationsHome extends StatefulWidget {
  const SectionPublicationsHome({super.key});

  @override
  State<SectionPublicationsHome> createState() =>
      _SectionPublicationsHomeState();
}

class _SectionPublicationsHomeState extends State<SectionPublicationsHome> {
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
    return SliverToBoxAdapter(
      child: publications.isEmpty
          ? Container()
          : SizedBox(
              height: 380,
              child: ListView.builder(
                itemCount: publications.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => index == 0
                    ? Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: CardPublicationSmall(
                          publication: publications[index],
                        ),
                      )
                    : CardPublicationSmall(
                        publication: publications[index],
                      ),
              ),
            ),
    );
  }
}
