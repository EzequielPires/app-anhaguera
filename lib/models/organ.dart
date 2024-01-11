class Organ {
  int id;
  String name;
  String idString;
  String abbreviation;

  Organ({
    required this.id,
    required this.name,
    required this.idString,
    required this.abbreviation,
  });

  factory Organ.fromJson(Map<String, dynamic> json) {
    return Organ(
      id: json['id'],
      name: json['name'],
      idString: json['idString'],
      abbreviation: json['abbreviation']
    );
  }
}