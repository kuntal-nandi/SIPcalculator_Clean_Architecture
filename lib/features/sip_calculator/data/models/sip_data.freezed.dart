// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sip_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SIPData {

 ReturnRateParcentage get returnRate; TimePeriod get timePeriod; MonthlyInvestment get monthlyInvestment;
/// Create a copy of SIPData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SIPDataCopyWith<SIPData> get copyWith => _$SIPDataCopyWithImpl<SIPData>(this as SIPData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SIPData&&(identical(other.returnRate, returnRate) || other.returnRate == returnRate)&&(identical(other.timePeriod, timePeriod) || other.timePeriod == timePeriod)&&(identical(other.monthlyInvestment, monthlyInvestment) || other.monthlyInvestment == monthlyInvestment));
}


@override
int get hashCode => Object.hash(runtimeType,returnRate,timePeriod,monthlyInvestment);

@override
String toString() {
  return 'SIPData(returnRate: $returnRate, timePeriod: $timePeriod, monthlyInvestment: $monthlyInvestment)';
}


}

/// @nodoc
abstract mixin class $SIPDataCopyWith<$Res>  {
  factory $SIPDataCopyWith(SIPData value, $Res Function(SIPData) _then) = _$SIPDataCopyWithImpl;
@useResult
$Res call({
 ReturnRateParcentage returnRate, TimePeriod timePeriod, MonthlyInvestment monthlyInvestment
});




}
/// @nodoc
class _$SIPDataCopyWithImpl<$Res>
    implements $SIPDataCopyWith<$Res> {
  _$SIPDataCopyWithImpl(this._self, this._then);

  final SIPData _self;
  final $Res Function(SIPData) _then;

/// Create a copy of SIPData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? returnRate = null,Object? timePeriod = null,Object? monthlyInvestment = null,}) {
  return _then(_self.copyWith(
returnRate: null == returnRate ? _self.returnRate : returnRate // ignore: cast_nullable_to_non_nullable
as ReturnRateParcentage,timePeriod: null == timePeriod ? _self.timePeriod : timePeriod // ignore: cast_nullable_to_non_nullable
as TimePeriod,monthlyInvestment: null == monthlyInvestment ? _self.monthlyInvestment : monthlyInvestment // ignore: cast_nullable_to_non_nullable
as MonthlyInvestment,
  ));
}

}


/// @nodoc


class _SIPData implements SIPData {
  const _SIPData({required this.returnRate, required this.timePeriod, required this.monthlyInvestment});
  

@override final  ReturnRateParcentage returnRate;
@override final  TimePeriod timePeriod;
@override final  MonthlyInvestment monthlyInvestment;

/// Create a copy of SIPData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SIPDataCopyWith<_SIPData> get copyWith => __$SIPDataCopyWithImpl<_SIPData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SIPData&&(identical(other.returnRate, returnRate) || other.returnRate == returnRate)&&(identical(other.timePeriod, timePeriod) || other.timePeriod == timePeriod)&&(identical(other.monthlyInvestment, monthlyInvestment) || other.monthlyInvestment == monthlyInvestment));
}


@override
int get hashCode => Object.hash(runtimeType,returnRate,timePeriod,monthlyInvestment);

@override
String toString() {
  return 'SIPData(returnRate: $returnRate, timePeriod: $timePeriod, monthlyInvestment: $monthlyInvestment)';
}


}

/// @nodoc
abstract mixin class _$SIPDataCopyWith<$Res> implements $SIPDataCopyWith<$Res> {
  factory _$SIPDataCopyWith(_SIPData value, $Res Function(_SIPData) _then) = __$SIPDataCopyWithImpl;
@override @useResult
$Res call({
 ReturnRateParcentage returnRate, TimePeriod timePeriod, MonthlyInvestment monthlyInvestment
});




}
/// @nodoc
class __$SIPDataCopyWithImpl<$Res>
    implements _$SIPDataCopyWith<$Res> {
  __$SIPDataCopyWithImpl(this._self, this._then);

  final _SIPData _self;
  final $Res Function(_SIPData) _then;

/// Create a copy of SIPData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? returnRate = null,Object? timePeriod = null,Object? monthlyInvestment = null,}) {
  return _then(_SIPData(
returnRate: null == returnRate ? _self.returnRate : returnRate // ignore: cast_nullable_to_non_nullable
as ReturnRateParcentage,timePeriod: null == timePeriod ? _self.timePeriod : timePeriod // ignore: cast_nullable_to_non_nullable
as TimePeriod,monthlyInvestment: null == monthlyInvestment ? _self.monthlyInvestment : monthlyInvestment // ignore: cast_nullable_to_non_nullable
as MonthlyInvestment,
  ));
}


}

// dart format on
