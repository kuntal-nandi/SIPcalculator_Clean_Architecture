// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculated_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalculatedResultEntity {

 InvestmentAmount get investmentAmount; double get totalReturns;
/// Create a copy of CalculatedResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalculatedResultEntityCopyWith<CalculatedResultEntity> get copyWith => _$CalculatedResultEntityCopyWithImpl<CalculatedResultEntity>(this as CalculatedResultEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalculatedResultEntity&&(identical(other.investmentAmount, investmentAmount) || other.investmentAmount == investmentAmount)&&(identical(other.totalReturns, totalReturns) || other.totalReturns == totalReturns));
}


@override
int get hashCode => Object.hash(runtimeType,investmentAmount,totalReturns);

@override
String toString() {
  return 'CalculatedResultEntity(investmentAmount: $investmentAmount, totalReturns: $totalReturns)';
}


}

/// @nodoc
abstract mixin class $CalculatedResultEntityCopyWith<$Res>  {
  factory $CalculatedResultEntityCopyWith(CalculatedResultEntity value, $Res Function(CalculatedResultEntity) _then) = _$CalculatedResultEntityCopyWithImpl;
@useResult
$Res call({
 InvestmentAmount investmentAmount, double totalReturns
});




}
/// @nodoc
class _$CalculatedResultEntityCopyWithImpl<$Res>
    implements $CalculatedResultEntityCopyWith<$Res> {
  _$CalculatedResultEntityCopyWithImpl(this._self, this._then);

  final CalculatedResultEntity _self;
  final $Res Function(CalculatedResultEntity) _then;

/// Create a copy of CalculatedResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? investmentAmount = null,Object? totalReturns = null,}) {
  return _then(_self.copyWith(
investmentAmount: null == investmentAmount ? _self.investmentAmount : investmentAmount // ignore: cast_nullable_to_non_nullable
as InvestmentAmount,totalReturns: null == totalReturns ? _self.totalReturns : totalReturns // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc


class _CalculatedResultEntity extends CalculatedResultEntity {
  const _CalculatedResultEntity({required this.investmentAmount, required this.totalReturns}): super._();
  

@override final  InvestmentAmount investmentAmount;
@override final  double totalReturns;

/// Create a copy of CalculatedResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalculatedResultEntityCopyWith<_CalculatedResultEntity> get copyWith => __$CalculatedResultEntityCopyWithImpl<_CalculatedResultEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalculatedResultEntity&&(identical(other.investmentAmount, investmentAmount) || other.investmentAmount == investmentAmount)&&(identical(other.totalReturns, totalReturns) || other.totalReturns == totalReturns));
}


@override
int get hashCode => Object.hash(runtimeType,investmentAmount,totalReturns);

@override
String toString() {
  return 'CalculatedResultEntity(investmentAmount: $investmentAmount, totalReturns: $totalReturns)';
}


}

/// @nodoc
abstract mixin class _$CalculatedResultEntityCopyWith<$Res> implements $CalculatedResultEntityCopyWith<$Res> {
  factory _$CalculatedResultEntityCopyWith(_CalculatedResultEntity value, $Res Function(_CalculatedResultEntity) _then) = __$CalculatedResultEntityCopyWithImpl;
@override @useResult
$Res call({
 InvestmentAmount investmentAmount, double totalReturns
});




}
/// @nodoc
class __$CalculatedResultEntityCopyWithImpl<$Res>
    implements _$CalculatedResultEntityCopyWith<$Res> {
  __$CalculatedResultEntityCopyWithImpl(this._self, this._then);

  final _CalculatedResultEntity _self;
  final $Res Function(_CalculatedResultEntity) _then;

/// Create a copy of CalculatedResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? investmentAmount = null,Object? totalReturns = null,}) {
  return _then(_CalculatedResultEntity(
investmentAmount: null == investmentAmount ? _self.investmentAmount : investmentAmount // ignore: cast_nullable_to_non_nullable
as InvestmentAmount,totalReturns: null == totalReturns ? _self.totalReturns : totalReturns // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
