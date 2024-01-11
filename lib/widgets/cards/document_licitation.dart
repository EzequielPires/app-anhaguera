import 'package:anhangueraonline/models/licitation.dart';
import 'package:flutter/material.dart';

class CardDocumentLicitation extends StatelessWidget {
  final Licitation licitation;
  const CardDocumentLicitation({super.key, required this.licitation});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
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
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${licitation.modality.name} - ${licitation.number}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
              Text(licitation.descriptionObject ?? '', style: TextStyle(fontSize: 14), maxLines: 2, overflow: TextOverflow.ellipsis,),
            ],
          ),
        ),
      ),
    );
  }
}
