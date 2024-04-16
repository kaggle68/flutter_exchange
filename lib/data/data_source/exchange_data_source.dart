import 'package:flutter_exchange/data/dto_mapper/exchange_mapper.dart';
import 'package:flutter_exchange/data/model/conversion_rates.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../dto_mapper/exchange_dto.dart';

class ExchangeDataSource {
  final http.Client _client;
  final String _apiKey = '950db4fa7b791ca910476aef'; // API 키는 보안이 강화된 방식으로 관리
  final _baseUrl = 'https://v6.exchangerate-api.com/v6/';

  ExchangeDataSource({http.Client? client}) : _client = client ?? http.Client();

  Future<ExchangeDto?> getExchangeResult(String baseCurrency) async {
    final url = Uri.parse('$_baseUrl$_apiKey/latest/$baseCurrency');
    final response =
        await _client.get(url, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final json = jsonDecode(utf8.decode(response.bodyBytes));
      // final uu = ExchangeDto.fromJson(json);
      // print(uu.conversionRates);
      return ExchangeDto.fromJson(json);
    } else {
      throw Exception(
          'Failed to load exchange rates with status code: ${response.statusCode}');
    }
  }
}

// void main() {
//   final result = ExchangeDataSource().getExchangeResult('USD');
//   print(result.)
// }
