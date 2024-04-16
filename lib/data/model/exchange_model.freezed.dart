// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangeModel _$ExchangeModelFromJson(Map<String, dynamic> json) {
  return _ExchangeModel.fromJson(json);
}

/// @nodoc
mixin _$ExchangeModel {
  String get timeLastUpdateUtc => throw _privateConstructorUsedError;
  String get baseCode => throw _privateConstructorUsedError;
  @ConversionRatesConverter()
  ConversionRates get conversionRates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeModelCopyWith<ExchangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeModelCopyWith<$Res> {
  factory $ExchangeModelCopyWith(
          ExchangeModel value, $Res Function(ExchangeModel) then) =
      _$ExchangeModelCopyWithImpl<$Res, ExchangeModel>;
  @useResult
  $Res call(
      {String timeLastUpdateUtc,
      String baseCode,
      @ConversionRatesConverter() ConversionRates conversionRates});

  $ConversionRatesCopyWith<$Res> get conversionRates;
}

/// @nodoc
class _$ExchangeModelCopyWithImpl<$Res, $Val extends ExchangeModel>
    implements $ExchangeModelCopyWith<$Res> {
  _$ExchangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLastUpdateUtc = null,
    Object? baseCode = null,
    Object? conversionRates = null,
  }) {
    return _then(_value.copyWith(
      timeLastUpdateUtc: null == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String,
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as ConversionRates,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversionRatesCopyWith<$Res> get conversionRates {
    return $ConversionRatesCopyWith<$Res>(_value.conversionRates, (value) {
      return _then(_value.copyWith(conversionRates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExchangeModelImplCopyWith<$Res>
    implements $ExchangeModelCopyWith<$Res> {
  factory _$$ExchangeModelImplCopyWith(
          _$ExchangeModelImpl value, $Res Function(_$ExchangeModelImpl) then) =
      __$$ExchangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String timeLastUpdateUtc,
      String baseCode,
      @ConversionRatesConverter() ConversionRates conversionRates});

  @override
  $ConversionRatesCopyWith<$Res> get conversionRates;
}

/// @nodoc
class __$$ExchangeModelImplCopyWithImpl<$Res>
    extends _$ExchangeModelCopyWithImpl<$Res, _$ExchangeModelImpl>
    implements _$$ExchangeModelImplCopyWith<$Res> {
  __$$ExchangeModelImplCopyWithImpl(
      _$ExchangeModelImpl _value, $Res Function(_$ExchangeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLastUpdateUtc = null,
    Object? baseCode = null,
    Object? conversionRates = null,
  }) {
    return _then(_$ExchangeModelImpl(
      timeLastUpdateUtc: null == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String,
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as ConversionRates,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangeModelImpl implements _ExchangeModel {
  const _$ExchangeModelImpl(
      {this.timeLastUpdateUtc = '00:00',
      this.baseCode = 'KRW',
      @ConversionRatesConverter() required this.conversionRates});

  factory _$ExchangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeModelImplFromJson(json);

  @override
  @JsonKey()
  final String timeLastUpdateUtc;
  @override
  @JsonKey()
  final String baseCode;
  @override
  @ConversionRatesConverter()
  final ConversionRates conversionRates;

  @override
  String toString() {
    return 'ExchangeModel(timeLastUpdateUtc: $timeLastUpdateUtc, baseCode: $baseCode, conversionRates: $conversionRates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeModelImpl &&
            (identical(other.timeLastUpdateUtc, timeLastUpdateUtc) ||
                other.timeLastUpdateUtc == timeLastUpdateUtc) &&
            (identical(other.baseCode, baseCode) ||
                other.baseCode == baseCode) &&
            (identical(other.conversionRates, conversionRates) ||
                other.conversionRates == conversionRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, timeLastUpdateUtc, baseCode, conversionRates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeModelImplCopyWith<_$ExchangeModelImpl> get copyWith =>
      __$$ExchangeModelImplCopyWithImpl<_$ExchangeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeModelImplToJson(
      this,
    );
  }
}

abstract class _ExchangeModel implements ExchangeModel {
  const factory _ExchangeModel(
      {final String timeLastUpdateUtc,
      final String baseCode,
      @ConversionRatesConverter()
      required final ConversionRates conversionRates}) = _$ExchangeModelImpl;

  factory _ExchangeModel.fromJson(Map<String, dynamic> json) =
      _$ExchangeModelImpl.fromJson;

  @override
  String get timeLastUpdateUtc;
  @override
  String get baseCode;
  @override
  @ConversionRatesConverter()
  ConversionRates get conversionRates;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeModelImplCopyWith<_$ExchangeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
