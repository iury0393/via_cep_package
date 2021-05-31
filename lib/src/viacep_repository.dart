import 'package:dio/dio.dart';
import 'package:via_cep_search/src/model.dart';

class ViaCepRepository {
  Future<ViaCepSearch> getViaCep(String cep) async {
    var response = await Dio().get('https://viacep.com.br/ws/$cep/json/');
    return ViaCepSearch.fromJson(response.data);
  }
}
