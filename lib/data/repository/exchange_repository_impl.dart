import 'package:flutter_exchange/data/repository/exchange_repository.dart';
import 'package:flutter_exchange/data/data_source/exchange_data_source.dart';
import 'package:flutter_exchange/data/model/exchange_model.dart';
import 'package:flutter_exchange/data/model/conversion_rates.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeDataSource _exchangeDataSource;

  ExchangeRepositoryImpl({required ExchangeDataSource exchangeDataSource})
      : _exchangeDataSource = exchangeDataSource;

  @override
  Future<ExchangeModel> getExchanges(String query) async {
// try {
// 데이터 소스로부터 ExchangeDto를 가져옵니다.
    final dto = await _exchangeDataSource.getExchangeResult(query);

    if (dto == null) {
// dto가 null인 경우, 기본 ConversionRates를 설정합니다.
      return ExchangeModel(
        conversionRates: ConversionRates.fromMap({
          'USD': 1.0, // USD를 기준으로 기본값 설정
// 다른 통화에 대한 기본값도 필요에 따라 추가할 수 있음
        }),
        timeLastUpdateUtc: 'No data available',
        baseCode: 'USD',
      );
    } else {
// dto가 null이 아닌 경우, dto를 사용하여 ExchangeModel을 생성합니다.
      return ExchangeModel(
          conversionRates: ConversionRates.fromJson(dto.toJson()),
          timeLastUpdateUtc: dto.timeLastUpdateUtc,
          baseCode: dto.baseCode);
    }
// } catch (e) {
// // 오류 처리: 로그 출력, 오류 전파 등
// throw Exception('Failed to fetch exchange data');
// }
  }
}
