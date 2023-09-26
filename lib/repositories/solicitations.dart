import 'dart:io';

import 'package:app_anhanguera/models/category.dart';
import 'package:app_anhanguera/models/requester.dart';
import 'package:app_anhanguera/models/solicitation.dart';
import 'package:dio/dio.dart';

class SolicitationsRepository {
  Future<Solicitation?> create(Solicitation solicitation) async {
    try {
      FormData formData = FormData.fromMap({
        'type': solicitation.type!.toJson(),
        'description': solicitation.description,
        'address': solicitation.address,
        'requester': solicitation.requester!.toJson(),
      });

      for (final File file in solicitation.images as List) {
        String fileName = file.path.split('/').last;
        formData.files.addAll([
          MapEntry("files[]",
              await MultipartFile.fromFile(file.path, filename: fileName))
        ]);
      }

      Dio dio = Dio();
      dio.options.headers["Authorization-X"] =
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6ImRldmVsb3BlckBwb3J0YWxjYXRhbGFvLmNvbS5iciJ9.-Q1nCwbVz9MaaU5UuRH8g_GehmQ8CHHwpVbQBeYZegc";
      final response = await dio.post(
          'https://solicitacoes.anhanguera.go.gov.br/api/solicitation/create',
          data: formData);
      solicitation = Solicitation.fromJson(response.data);

      return solicitation;
    } catch (e) {
      Future.error(e.toString());
      return null;
    }
  }

  Future<Solicitation?> findByProtocol(String protocol) async {
    try {
      Dio dio = Dio();
      dio.options.headers["Authorization-X"] =
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6ImRldmVsb3BlckBwb3J0YWxjYXRhbGFvLmNvbS5iciJ9.-Q1nCwbVz9MaaU5UuRH8g_GehmQ8CHHwpVbQBeYZegc";
      final response = await dio.get(
          'https://solicitacoes.anhanguera.go.gov.br/api/solicitation/$protocol/protocol');

      if (response.data['protocol'] == null) return null;

      final solicitation = Solicitation.fromJson(response.data);
      return solicitation;
    } catch (e) {
      Future.error(e.toString());
      return null;
    }
  }
}
