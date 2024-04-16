import 'package:flutter_exchange/data/repository/exchange_repository.dart';

import '../model/exchange_model.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeModel _exchangeModel;

  ExchangeRepositoryImpl({required ExchangeModel exchangeModel})
      : _exchangeModel = exchangeModel;

  @override
  Future<ExchangeModel> getExchanges(String query) async {
    final dto = await _exchangeModel.getExchangeResult(query);

  }
}
