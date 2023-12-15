import 'package:anhangueraonline/models/publication.dart';
import 'package:dio/dio.dart';

class PublicationsRepository {
  Dio _dio = Dio();

  Future<List<Publication>> findAll() async {
    try {
      var response =
          await _dio.get('http://192.168.0.138:8000/api/publications');

      if (response.data['success']) {
        var results = response.data['results'] as List;

        List<Publication> publications =
            results.map((json) => Publication.fromJson(json)).toList();

        return publications;
      } else {
        return [];
      }
    } catch (error) {
      return [];
    }
  }
}
