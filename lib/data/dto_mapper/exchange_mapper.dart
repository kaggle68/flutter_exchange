import 'package:flutter_exchange/data/dto_mapper/exchange_dto.dart';
import 'package:flutter_exchange/data/model/conversion_rates.dart';
import 'package:flutter_exchange/data/model/exchange_model.dart';

extension ExchangeDtoToExchange on ExchangeDto {
  ExchangeModel toExchange() {
    return ExchangeModel(
      timeLastUpdateUtc: timeLastUpdateUtc,
      baseCode: baseCode,
      conversionRates: conversionRates.toConversionRates(),
    );
  }
}

extension ConversionRatesDtoToConversionRates on ConversionRatesDto {
  ConversionRates toConversionRates() {
    return ConversionRates(
      usd: usd ?? -1.0,
      aed: aed ?? -1.0,
      afn: afn ?? -1.0,
      all: all ?? -1.0,
      amd: amd ?? -1.0,
      ang: ang ?? -1.0,
      aoa: aoa ?? -1.0,
      ars: ars ?? -1.0,
      aud: aud ?? -1.0,
      awg: awg ?? -1.0,
      azn: azn ?? -1.0,
      bam: bam ?? -1.0,
      bbd: bbd ?? -1.0,
      bdt: bdt ?? -1.0,
    );
  }
}
