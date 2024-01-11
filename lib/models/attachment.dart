class Attachment {
  int id;
  String name;
  String? description;
  String created;
  String published;
  File file;

  Attachment(
      {required this.id,
      required this.name,
      required this.created,
      required this.description,
      required this.published,
      required this.file});

  factory Attachment.fromJson(Map<String, dynamic> json) {
    return Attachment(
      id: json['id'],
      name: json['name'],
      created: json['created'],
      description: json['description'],
      published: json['published'],
      file: File.fromJson(json['file'])
    );
  }
}

class File {
  int id;
  String? name;
  String path;
  String? extension;
  int? size;

  File(
      {required this.extension,
      required this.id,
      required this.name,
      required this.path,
      required this.size});

  factory File.fromJson(Map<String, dynamic> json) {
    return File(
      extension: json['extension'],
      id: json['id'],
      name: json['name'],
      path: json['path'],
      size: json['size'],
    );
  }
}
