// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeModelImpl _$$ExchangeModelImplFromJson(Map<String, dynamic> json) =>
    _$ExchangeModelImpl(
      timeLastUpdateUtc: json['timeLastUpdateUtc'] as String? ?? '00:00',
      baseCode: json['baseCode'] as String? ?? 'KRW',
      conversionRates: const ConversionRatesConverter()
          .fromJson(json['conversionRates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExchangeModelImplToJson(_$ExchangeModelImpl instance) =>
    <String, dynamic>{
      'timeLastUpdateUtc': instance.timeLastUpdateUtc,
      'baseCode': instance.baseCode,
      'conversionRates':
          const ConversionRatesConverter().toJson(instance.conversionRates),
    };
