
import '../model/exchange_model.dart';

abstract interface class ExchangeRepository{
  Future<ExchangeModel> getExchanges(String query);
}