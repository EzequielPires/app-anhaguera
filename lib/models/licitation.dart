import 'package:anhangueraonline/models/attachment.dart';
import 'package:anhangueraonline/models/licitation_modality.dart';
import 'package:anhangueraonline/models/organ.dart';

class Licitation {
  int id;
  LicitationModality modality;
  String situationLicitation;
  String? basedLaw;
  String? priceEstimated;
  String openingAt;
  String openinghour;
  String publishedAt;
  Organ? organ;
  String descriptionObject;
  String protocol;
  List<Attachment>? attachments;
  bool deleted;
  String createdAt;
  String number;
  bool covid;

  Licitation({
    required this.attachments,
    required this.basedLaw,
    required this.covid,
    required this.createdAt,
    required this.deleted,
    required this.descriptionObject,
    required this.id,
    required this.modality,
    required this.number,
    required this.openingAt,
    required this.openinghour,
    required this.organ,
    required this.priceEstimated,
    required this.protocol,
    required this.publishedAt,
    required this.situationLicitation,
  });

  factory Licitation.fromJson(Map<String, dynamic> json) {
    var results = json['attachments'] as List;
    List<Attachment> attachments = results.map((json) => Attachment.fromJson(json)).toList();

    return Licitation(
      attachments: attachments,
      basedLaw: json['basedLaw'],
      covid: json['covid'],
      createdAt: json['createdAt'],
      deleted: json['deleted'],
      descriptionObject: json['descriptionObject'],
      id: json['id'],
      modality: LicitationModality.fromJson(json['modality']),
      number: json['number'],
      openingAt: json['openingAt'],
      openinghour: json['openinghour'],
      organ: json['organ'] != null ? Organ.fromJson(json['organ']) : null,
      priceEstimated: json['priceEstimated'],
      protocol: json['protocol'],
      publishedAt: json['publishedAt'],
      situationLicitation: json['situationLicitation'],
    );
  }
}
