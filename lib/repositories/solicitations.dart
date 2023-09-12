import 'package:app_anhanguera/models/category.dart';
import 'package:app_anhanguera/models/requester.dart';
import 'package:app_anhanguera/models/solicitation.dart';
import 'package:dio/dio.dart';

class SolicitationsRepository {
  Future<Solicitation?> create() async {
    return null;
  }

  Future<Solicitation?> findByProtocol(String protocol) async {
    try {
      Dio dio = Dio();
      dio.options.headers["authorization"] =
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6InJvZ2VyQHBvcnRhbGNhdGFsYW8uY29tLmJyIn0.gR9PXl_opEacvUAjfijshVNrJ3xBjgMMAVc41bHOv5c";
      final response = await dio.get(
          'https://solicitacoes.catalao.go.gov.br/api/solicitation/$protocol/protocol');

      if(response.data['protocol'] == null) return null;

      final solicitation = Solicitation.fromJson(response.data);
      return solicitation;
    } catch (e) {
      Future.error(e.toString());
      return null;
    }
  }
}
