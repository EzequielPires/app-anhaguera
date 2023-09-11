import 'package:dio/dio.dart';

class AddressService {
  Future<String?> getCep(String cep) async {
    try {
      Dio dio = Dio();
      dio.options.headers["authorization"] =
      "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6InJvZ2VyQHBvcnRhbGNhdGFsYW8uY29tLmJyIn0.gR9PXl_opEacvUAjfijshVNrJ3xBjgMMAVc41bHOv5c";
      final response = await dio.get(
          'https://solicitacoes.catalao.go.gov.br/api/address/$cep/search');

      final result  = response.data['success'];
      return result ? response.data['data'] : null;

    } catch (e) {
      Future.error(e.toString());
      return null;
    }
  }
}