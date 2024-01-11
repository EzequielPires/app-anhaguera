class LicitationModality {
  int id;
  String name;
  String idString;

  LicitationModality({
    required this.id,
    required this.name,
    required this.idString,
  });

  factory LicitationModality.fromJson(Map<String, dynamic> json) {
    return LicitationModality(
      id: json['id'],
      name: json['name'],
      idString: json['idString'],
    );
  }
}
