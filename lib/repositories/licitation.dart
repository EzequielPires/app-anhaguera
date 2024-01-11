import 'package:anhangueraonline/models/licitation.dart';
import 'package:dio/dio.dart';

class LicitationRepository {
  Dio _dio = Dio();

  Future<List<Licitation>> findAll() async {
    try {
      var response =
          await _dio.get('http://192.168.0.138:8000/api/documents/licitations');

      if (response.data['success']) {
        var results = response.data['results'] as List;

        List<Licitation> licitations =
            results.map((json) => Licitation.fromJson(json)).toList();

        return licitations;
      } else {
        return [];
      }
    } catch (error) {
      print(error);
      return [];
    }
  }
}