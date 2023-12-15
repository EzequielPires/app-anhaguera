class PublicationCategory {
  int id;
  String id_string;
  String name;

  PublicationCategory({required this.id, required this.id_string, required this.name}); 

  factory PublicationCategory.fromJson(Map<String, dynamic> json) {
    return PublicationCategory(id: json['id'], id_string: json['id_string'], name: json['name']);
  }
}