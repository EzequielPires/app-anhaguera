class Requester {
  String? name;
  String? email;
  String? phone;

  Requester({this.name, this.email, this.phone});

  factory Requester.fromJson(Map<String, dynamic> json) {
    return Requester(
      name: json['nome'].toString().trim(),
      email: json['email'].toString().trim(),
    );
  }
}