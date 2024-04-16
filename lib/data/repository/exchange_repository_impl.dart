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
      return ExchangeModel(conversionRates: {} );
    }
  }
}
