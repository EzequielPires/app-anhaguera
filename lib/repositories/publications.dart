import 'package:anhangueraonline/models/publication.dart';
import 'package:dio/dio.dart';

class PublicationsRepository {
  Dio _dio = Dio();

  Future<List<Publication>> findAll() async {
    try {
      var response =
          await _dio.get('https://developer.anhanguera.go.gov.br/api/publications');

      print(response);

      if (response.data['success']) {
        var results = response.data['results'] as List;

        List<Publication> publications =
            results.map((json) => Publication.fromJson(json)).toList();

        return publications;
      } else {
        return [];
      }
    } catch (error) {
      print(error);
      return [];
    }
  }
}
