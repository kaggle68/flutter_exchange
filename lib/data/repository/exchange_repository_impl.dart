import 'package:flutter_exchange/data/repository/exchange_repository.dart';

import '../data_source/exchange_data_source.dart';
import '../model/exchange_model.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeDataSource _exchangeDataSource;

  ExchangeRepositoryImpl({required ExchangeDataSource exchangeDataSource})
      : _exchangeDataSource = exchangeDataSource;

  @override
  Future<ExchangeModel> getExchanges(String query) async {
    final dto = await _exchangeDataSource.getExchangeResult(query);
    if (dto == null){
      final defaultConversionRates = {
        'USD': 1.0, // 예시로 USD를 기준으로 설정
        // 다른 통화에 대한 기본값도 필요에 따라 추가할 수 있음
      };
      return ExchangeModel(conversionRates: defaultConversionRates);
    }
    return dto;
  }
}
