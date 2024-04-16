import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_exchange/data/model/conversion_rates.dart';

part 'exchange_model.freezed.dart';
part 'exchange_model.g.dart';

class ConversionRatesConverter
    implements JsonConverter<ConversionRates, Map<String, dynamic>> {
  const ConversionRatesConverter();

  @override
  ConversionRates fromJson(Map<String, dynamic> json) =>
      ConversionRates.fromJson(json);

  @override
  Map<String, dynamic> toJson(ConversionRates rates) => rates.toJson();
}

@freezed
class ExchangeModel with _$ExchangeModel {
  const factory ExchangeModel({
    @Default('00:00') String timeLastUpdateUtc,
    @Default('KRW') String baseCode,
    @ConversionRatesConverter() required ConversionRates conversionRates,
  }) = _ExchangeModel;

  factory ExchangeModel.fromJson(Map<String, dynamic> json) =>
      _$ExchangeModelFromJson(json);
}
