class DocumentCategory {
  int id;
  String name;
  String? image;
  final String? obs;

  DocumentCategory({required this.id, required this.name, this.image, this.obs});

  factory DocumentCategory.fromJson(Map<String, dynamic> json) {
    return DocumentCategory(
      id: json['id'],
      name: json['name'].toString().trim(),
    );
  }

  toJson() {
    return {'id': id, 'nome': name, 'obs': obs};
  }
}
