import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversion_rates.freezed.dart';

part 'conversion_rates.g.dart';

@freezed
class ConversionRates with _$ConversionRate {
  const factory ConversionRates({
    @Default(0) num usd,
    @Default(0) num aed,
    @Default(0) num afn,
    @Default(0) num all,
    @Default(0) num amd,
    @Default(0) num ang,
    @Default(0) num aoa,
    @Default(0) num ars,
    @Default(0) num aud,
    @Default(0) num awg,
    @Default(0) num azn,
    @Default(0) num bam,
    @Default(0) num bbd,
    @Default(0) num bdt,
  }) = _ConversionRates;

  factory ConversionRates.fromJson(Map<String, Object?> json) =>
      _$ConversionRatesFromJson(json);
}
