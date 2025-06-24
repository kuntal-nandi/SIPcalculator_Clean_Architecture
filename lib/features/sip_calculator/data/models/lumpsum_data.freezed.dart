// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lumpsum_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LumpsumData {

 InvestmentAmount get lumpsumInvestmentAmount; ReturnRateParcentage get returnRate; TimePeriod get timePeriod;
/// Create a copy of LumpsumData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LumpsumDataCopyWith<LumpsumData> get copyWith => _$LumpsumDataCopyWithImpl<LumpsumData>(this as LumpsumData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LumpsumData&&(identical(other.lumpsumInvestmentAmount, lumpsumInvestmentAmount) || other.lumpsumInvestmentAmount == lumpsumInvestmentAmount)&&(identical(other.returnRate, returnRate) || other.returnRate == returnRate)&&(identical(other.timePeriod, timePeriod) || other.timePeriod == timePeriod));
}


@override
int get hashCode => Object.hash(runtimeType,lumpsumInvestmentAmount,returnRate,timePeriod);

@override
String toString() {
  return 'LumpsumData(lumpsumInvestmentAmount: $lumpsumInvestmentAmount, returnRate: $returnRate, timePeriod: $timePeriod)';
}


}

/// @nodoc
abstract mixin class $LumpsumDataCopyWith<$Res>  {
  factory $LumpsumDataCopyWith(LumpsumData value, $Res Function(LumpsumData) _then) = _$LumpsumDataCopyWithImpl;
@useResult
$Res call({
 InvestmentAmount lumpsumInvestmentAmount, ReturnRateParcentage returnRate, TimePeriod timePeriod
});




}
/// @nodoc
class _$LumpsumDataCopyWithImpl<$Res>
    implements $LumpsumDataCopyWith<$Res> {
  _$LumpsumDataCopyWithImpl(this._self, this._then);

  final LumpsumData _self;
  final $Res Function(LumpsumData) _then;

/// Create a copy of LumpsumData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lumpsumInvestmentAmount = null,Object? returnRate = null,Object? timePeriod = null,}) {
  return _then(_self.copyWith(
lumpsumInvestmentAmount: null == lumpsumInvestmentAmount ? _self.lumpsumInvestmentAmount : lumpsumInvestmentAmount // ignore: cast_nullable_to_non_nullable
as InvestmentAmount,returnRate: null == returnRate ? _self.returnRate : returnRate // ignore: cast_nullable_to_non_nullable
as ReturnRateParcentage,timePeriod: null == timePeriod ? _self.timePeriod : timePeriod // ignore: cast_nullable_to_non_nullable
as TimePeriod,
  ));
}

}


/// @nodoc


class _LumpsumData implements LumpsumData {
  const _LumpsumData({required this.lumpsumInvestmentAmount, required this.returnRate, required this.timePeriod});
  

@override final  InvestmentAmount lumpsumInvestmentAmount;
@override final  ReturnRateParcentage returnRate;
@override final  TimePeriod timePeriod;

/// Create a copy of LumpsumData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LumpsumDataCopyWith<_LumpsumData> get copyWith => __$LumpsumDataCopyWithImpl<_LumpsumData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LumpsumData&&(identical(other.lumpsumInvestmentAmount, lumpsumInvestmentAmount) || other.lumpsumInvestmentAmount == lumpsumInvestmentAmount)&&(identical(other.returnRate, returnRate) || other.returnRate == returnRate)&&(identical(other.timePeriod, timePeriod) || other.timePeriod == timePeriod));
}


@override
int get hashCode => Object.hash(runtimeType,lumpsumInvestmentAmount,returnRate,timePeriod);

@override
String toString() {
  return 'LumpsumData(lumpsumInvestmentAmount: $lumpsumInvestmentAmount, returnRate: $returnRate, timePeriod: $timePeriod)';
}


}

/// @nodoc
abstract mixin class _$LumpsumDataCopyWith<$Res> implements $LumpsumDataCopyWith<$Res> {
  factory _$LumpsumDataCopyWith(_LumpsumData value, $Res Function(_LumpsumData) _then) = __$LumpsumDataCopyWithImpl;
@override @useResult
$Res call({
 InvestmentAmount lumpsumInvestmentAmount, ReturnRateParcentage returnRate, TimePeriod timePeriod
});




}
/// @nodoc
class __$LumpsumDataCopyWithImpl<$Res>
    implements _$LumpsumDataCopyWith<$Res> {
  __$LumpsumDataCopyWithImpl(this._self, this._then);

  final _LumpsumData _self;
  final $Res Function(_LumpsumData) _then;

/// Create a copy of LumpsumData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lumpsumInvestmentAmount = null,Object? returnRate = null,Object? timePeriod = null,}) {
  return _then(_LumpsumData(
lumpsumInvestmentAmount: null == lumpsumInvestmentAmount ? _self.lumpsumInvestmentAmount : lumpsumInvestmentAmount // ignore: cast_nullable_to_non_nullable
as InvestmentAmount,returnRate: null == returnRate ? _self.returnRate : returnRate // ignore: cast_nullable_to_non_nullable
as ReturnRateParcentage,timePeriod: null == timePeriod ? _self.timePeriod : timePeriod // ignore: cast_nullable_to_non_nullable
as TimePeriod,
  ));
}


}

// dart format on
