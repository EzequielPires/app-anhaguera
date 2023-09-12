class Category {
  int id;
  String name;
  String? image;

  Category({required this.id, required this.name, this.image});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'].toString().trim(),
    );
  }
}
