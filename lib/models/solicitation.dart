import 'package:app_anhanguera/models/category.dart';
import 'package:app_anhanguera/models/requester.dart';

class Solicitation {
  String? id;
  Category? type;
  List? images;
  String? description;
  String? address;
  String? status;
  Requester? requester;
  String? protocol;
  String? createdAt;

  Solicitation(
      {this.address,
      this.createdAt,
      this.description,
      this.id,
      this.images,
      this.protocol,
      this.requester,
      this.status,
      this.type});

  factory Solicitation.fromJson(Map<String, dynamic> json) {
    return Solicitation(
      id: json['id'].toString(),
      protocol: json['protocol'].toString(),
      address: json['address'].toString(),
      status: json['status'].toString(),
      type: json['type'] != null ? Category.fromJson(json['type']) : null,
      requester: json['requester'] != null ? Requester.fromJson(json['requester']) : null,
    );
  }
}
