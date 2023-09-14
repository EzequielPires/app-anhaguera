class Category {
  int id;
  String name;
  String? image;
  final String? obs;

  Category({required this.id, required this.name, this.image, this.obs});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'].toString().trim(),
    );
  }

  toJson() {
    return {'id': id, 'nome': name, 'obs': obs};
  }
}
