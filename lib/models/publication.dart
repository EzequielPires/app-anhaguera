import 'package:anhangueraonline/models/publication_category.dart';

class Publication {
  int id;
  String title;
  String id_string;
  String introduction;
  String content;
  String created_at;
  String thumbnail;
  List<dynamic>? attachments;
  PublicationCategory category;
  bool draft;
  String publish_at;
  bool deleted;
  bool covid;

  Publication(
      {required this.id,
      required this.title,
      required this.id_string,
      required this.introduction,
      required this.content,
      required this.created_at,
      required this.thumbnail,
      required this.attachments,
      required this.category,
      required this.draft,
      required this.covid,
      required this.deleted,
      required this.publish_at});

  factory Publication.fromJson(Map<String, dynamic> json) {
    return Publication(
      id: json['id'],
      title: json['title'],
      id_string: json['id_string'],
      introduction: json['introduction'],
      content: json['content'],
      created_at: json['created_at'],
      thumbnail: json['thumbnail']['path'],
      attachments: [],
      category: PublicationCategory.fromJson(json['category']),
      draft: json['draft'],
      covid: json['covid'],
      deleted: json['deleted'],
      publish_at: json['publish_at'],
    );
  }
}
