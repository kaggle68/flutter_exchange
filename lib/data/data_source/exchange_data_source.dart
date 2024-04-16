import 'package:flutter_exchange/data/dto_mapper/exchange_dto.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SubwayDataSource {
  final http.Client _client;
  final _url = 'https://v6.exchangerate-api.com/v6/6d3ec6d392cc1520e22fc20f/latest/';
  SubwayDataSource({http.Client? client}) : _client = client ?? http.Client();

  Future<ExchangeDto?> getExchange(String query) async {
    ExchangeDto exchangeDto = ExchangeDto();

    final response = await _client.get(Uri.parse('$_url/$query'));

    if (response.statusCode == 200) {
      Map<String, dynamic> json =
      await jsonDecode(utf8.decode(response.bodyBytes));
      final result = ExchangeDto.fromJson(json);
      // Map<String, dynamic> conversionRates = json['conversion_rates'];
      // final exchangeResult = result.conversionRates;
      // print(exchangeResult);
      return result;
    }
  }
}

// void main() async {
//   final result = await SubwayDataSource().getExchange('USD');
//   print(result);
// }