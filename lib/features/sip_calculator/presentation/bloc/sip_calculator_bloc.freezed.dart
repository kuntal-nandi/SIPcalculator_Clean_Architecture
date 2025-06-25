// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sip_calculator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SipCalculatorEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SipCalculatorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SipCalculatorEvent()';
}


}

/// @nodoc
class $SipCalculatorEventCopyWith<$Res>  {
$SipCalculatorEventCopyWith(SipCalculatorEvent _, $Res Function(SipCalculatorEvent) __);
}


/// @nodoc


class Started implements SipCalculatorEvent {
  const Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SipCalculatorEvent.started()';
}


}




/// @nodoc


class InvestmentTypeChanged implements SipCalculatorEvent {
  const InvestmentTypeChanged({required this.investmentType});
  

 final  InvestmentType investmentType;

/// Create a copy of SipCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvestmentTypeChangedCopyWith<InvestmentTypeChanged> get copyWith => _$InvestmentTypeChangedCopyWithImpl<InvestmentTypeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvestmentTypeChanged&&(identical(other.investmentType, investmentType) || other.investmentType == investmentType));
}


@override
int get hashCode => Object.hash(runtimeType,investmentType);

@override
String toString() {
  return 'SipCalculatorEvent.investmentTypeChanged(investmentType: $investmentType)';
}


}

/// @nodoc
abstract mixin class $InvestmentTypeChangedCopyWith<$Res> implements $SipCalculatorEventCopyWith<$Res> {
  factory $InvestmentTypeChangedCopyWith(InvestmentTypeChanged value, $Res Function(InvestmentTypeChanged) _then) = _$InvestmentTypeChangedCopyWithImpl;
@useResult
$Res call({
 InvestmentType investmentType
});




}
/// @nodoc
class _$InvestmentTypeChangedCopyWithImpl<$Res>
    implements $InvestmentTypeChangedCopyWith<$Res> {
  _$InvestmentTypeChangedCopyWithImpl(this._self, this._then);

  final InvestmentTypeChanged _self;
  final $Res Function(InvestmentTypeChanged) _then;

/// Create a copy of SipCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? investmentType = null,}) {
  return _then(InvestmentTypeChanged(
investmentType: null == investmentType ? _self.investmentType : investmentType // ignore: cast_nullable_to_non_nullable
as InvestmentType,
  ));
}


}

/// @nodoc


class AmountChanged implements SipCalculatorEvent {
  const AmountChanged({required this.amount});
  

 final  double amount;

/// Create a copy of SipCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmountChangedCopyWith<AmountChanged> get copyWith => _$AmountChangedCopyWithImpl<AmountChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AmountChanged&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'SipCalculatorEvent.amountChanged(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $AmountChangedCopyWith<$Res> implements $SipCalculatorEventCopyWith<$Res> {
  factory $AmountChangedCopyWith(AmountChanged value, $Res Function(AmountChanged) _then) = _$AmountChangedCopyWithImpl;
@useResult
$Res call({
 double amount
});




}
/// @nodoc
class _$AmountChangedCopyWithImpl<$Res>
    implements $AmountChangedCopyWith<$Res> {
  _$AmountChangedCopyWithImpl(this._self, this._then);

  final AmountChanged _self;
  final $Res Function(AmountChanged) _then;

/// Create a copy of SipCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(AmountChanged(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class ReturnRateChanged implements SipCalculatorEvent {
  const ReturnRateChanged({required this.returnRate});
  

 final  double returnRate;

/// Create a copy of SipCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnRateChangedCopyWith<ReturnRateChanged> get copyWith => _$ReturnRateChangedCopyWithImpl<ReturnRateChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReturnRateChanged&&(identical(other.returnRate, returnRate) || other.returnRate == returnRate));
}


@override
int get hashCode => Object.hash(runtimeType,returnRate);

@override
String toString() {
  return 'SipCalculatorEvent.returnRateChanged(returnRate: $returnRate)';
}


}

/// @nodoc
abstract mixin class $ReturnRateChangedCopyWith<$Res> implements $SipCalculatorEventCopyWith<$Res> {
  factory $ReturnRateChangedCopyWith(ReturnRateChanged value, $Res Function(ReturnRateChanged) _then) = _$ReturnRateChangedCopyWithImpl;
@useResult
$Res call({
 double returnRate
});




}
/// @nodoc
class _$ReturnRateChangedCopyWithImpl<$Res>
    implements $ReturnRateChangedCopyWith<$Res> {
  _$ReturnRateChangedCopyWithImpl(this._self, this._then);

  final ReturnRateChanged _self;
  final $Res Function(ReturnRateChanged) _then;

/// Create a copy of SipCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? returnRate = null,}) {
  return _then(ReturnRateChanged(
returnRate: null == returnRate ? _self.returnRate : returnRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class TimePeriodChanged implements SipCalculatorEvent {
  const TimePeriodChanged({required this.timePeriod});
  

 final  int timePeriod;

/// Create a copy of SipCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimePeriodChangedCopyWith<TimePeriodChanged> get copyWith => _$TimePeriodChangedCopyWithImpl<TimePeriodChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimePeriodChanged&&(identical(other.timePeriod, timePeriod) || other.timePeriod == timePeriod));
}


@override
int get hashCode => Object.hash(runtimeType,timePeriod);

@override
String toString() {
  return 'SipCalculatorEvent.timePeriodChanged(timePeriod: $timePeriod)';
}


}

/// @nodoc
abstract mixin class $TimePeriodChangedCopyWith<$Res> implements $SipCalculatorEventCopyWith<$Res> {
  factory $TimePeriodChangedCopyWith(TimePeriodChanged value, $Res Function(TimePeriodChanged) _then) = _$TimePeriodChangedCopyWithImpl;
@useResult
$Res call({
 int timePeriod
});




}
/// @nodoc
class _$TimePeriodChangedCopyWithImpl<$Res>
    implements $TimePeriodChangedCopyWith<$Res> {
  _$TimePeriodChangedCopyWithImpl(this._self, this._then);

  final TimePeriodChanged _self;
  final $Res Function(TimePeriodChanged) _then;

/// Create a copy of SipCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timePeriod = null,}) {
  return _then(TimePeriodChanged(
timePeriod: null == timePeriod ? _self.timePeriod : timePeriod // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CalculateSIP implements SipCalculatorEvent {
  const CalculateSIP();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalculateSIP);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SipCalculatorEvent.calculateClicked()';
}


}




/// @nodoc
mixin _$SipCalculatorState {

 double get amount; double get returnRate; int get timePeriod; CalculatedResultEntity get calculatedResult; bool get isLoading; InvestmentType get investmentType;
/// Create a copy of SipCalculatorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SipCalculatorStateCopyWith<SipCalculatorState> get copyWith => _$SipCalculatorStateCopyWithImpl<SipCalculatorState>(this as SipCalculatorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SipCalculatorState&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.returnRate, returnRate) || other.returnRate == returnRate)&&(identical(other.timePeriod, timePeriod) || other.timePeriod == timePeriod)&&(identical(other.calculatedResult, calculatedResult) || other.calculatedResult == calculatedResult)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.investmentType, investmentType) || other.investmentType == investmentType));
}


@override
int get hashCode => Object.hash(runtimeType,amount,returnRate,timePeriod,calculatedResult,isLoading,investmentType);

@override
String toString() {
  return 'SipCalculatorState(amount: $amount, returnRate: $returnRate, timePeriod: $timePeriod, calculatedResult: $calculatedResult, isLoading: $isLoading, investmentType: $investmentType)';
}


}

/// @nodoc
abstract mixin class $SipCalculatorStateCopyWith<$Res>  {
  factory $SipCalculatorStateCopyWith(SipCalculatorState value, $Res Function(SipCalculatorState) _then) = _$SipCalculatorStateCopyWithImpl;
@useResult
$Res call({
 double amount, double returnRate, int timePeriod, CalculatedResultEntity calculatedResult, bool isLoading, InvestmentType investmentType
});


$CalculatedResultEntityCopyWith<$Res> get calculatedResult;

}
/// @nodoc
class _$SipCalculatorStateCopyWithImpl<$Res>
    implements $SipCalculatorStateCopyWith<$Res> {
  _$SipCalculatorStateCopyWithImpl(this._self, this._then);

  final SipCalculatorState _self;
  final $Res Function(SipCalculatorState) _then;

/// Create a copy of SipCalculatorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? returnRate = null,Object? timePeriod = null,Object? calculatedResult = null,Object? isLoading = null,Object? investmentType = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,returnRate: null == returnRate ? _self.returnRate : returnRate // ignore: cast_nullable_to_non_nullable
as double,timePeriod: null == timePeriod ? _self.timePeriod : timePeriod // ignore: cast_nullable_to_non_nullable
as int,calculatedResult: null == calculatedResult ? _self.calculatedResult : calculatedResult // ignore: cast_nullable_to_non_nullable
as CalculatedResultEntity,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,investmentType: null == investmentType ? _self.investmentType : investmentType // ignore: cast_nullable_to_non_nullable
as InvestmentType,
  ));
}
/// Create a copy of SipCalculatorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalculatedResultEntityCopyWith<$Res> get calculatedResult {
  
  return $CalculatedResultEntityCopyWith<$Res>(_self.calculatedResult, (value) {
    return _then(_self.copyWith(calculatedResult: value));
  });
}
}


/// @nodoc


class _SipCalculatorState extends SipCalculatorState {
  const _SipCalculatorState({required this.amount, required this.returnRate, required this.timePeriod, required this.calculatedResult, required this.isLoading, required this.investmentType}): super._();
  

@override final  double amount;
@override final  double returnRate;
@override final  int timePeriod;
@override final  CalculatedResultEntity calculatedResult;
@override final  bool isLoading;
@override final  InvestmentType investmentType;

/// Create a copy of SipCalculatorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SipCalculatorStateCopyWith<_SipCalculatorState> get copyWith => __$SipCalculatorStateCopyWithImpl<_SipCalculatorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SipCalculatorState&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.returnRate, returnRate) || other.returnRate == returnRate)&&(identical(other.timePeriod, timePeriod) || other.timePeriod == timePeriod)&&(identical(other.calculatedResult, calculatedResult) || other.calculatedResult == calculatedResult)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.investmentType, investmentType) || other.investmentType == investmentType));
}


@override
int get hashCode => Object.hash(runtimeType,amount,returnRate,timePeriod,calculatedResult,isLoading,investmentType);

@override
String toString() {
  return 'SipCalculatorState(amount: $amount, returnRate: $returnRate, timePeriod: $timePeriod, calculatedResult: $calculatedResult, isLoading: $isLoading, investmentType: $investmentType)';
}


}

/// @nodoc
abstract mixin class _$SipCalculatorStateCopyWith<$Res> implements $SipCalculatorStateCopyWith<$Res> {
  factory _$SipCalculatorStateCopyWith(_SipCalculatorState value, $Res Function(_SipCalculatorState) _then) = __$SipCalculatorStateCopyWithImpl;
@override @useResult
$Res call({
 double amount, double returnRate, int timePeriod, CalculatedResultEntity calculatedResult, bool isLoading, InvestmentType investmentType
});


@override $CalculatedResultEntityCopyWith<$Res> get calculatedResult;

}
/// @nodoc
class __$SipCalculatorStateCopyWithImpl<$Res>
    implements _$SipCalculatorStateCopyWith<$Res> {
  __$SipCalculatorStateCopyWithImpl(this._self, this._then);

  final _SipCalculatorState _self;
  final $Res Function(_SipCalculatorState) _then;

/// Create a copy of SipCalculatorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? returnRate = null,Object? timePeriod = null,Object? calculatedResult = null,Object? isLoading = null,Object? investmentType = null,}) {
  return _then(_SipCalculatorState(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,returnRate: null == returnRate ? _self.returnRate : returnRate // ignore: cast_nullable_to_non_nullable
as double,timePeriod: null == timePeriod ? _self.timePeriod : timePeriod // ignore: cast_nullable_to_non_nullable
as int,calculatedResult: null == calculatedResult ? _self.calculatedResult : calculatedResult // ignore: cast_nullable_to_non_nullable
as CalculatedResultEntity,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,investmentType: null == investmentType ? _self.investmentType : investmentType // ignore: cast_nullable_to_non_nullable
as InvestmentType,
  ));
}

/// Create a copy of SipCalculatorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalculatedResultEntityCopyWith<$Res> get calculatedResult {
  
  return $CalculatedResultEntityCopyWith<$Res>(_self.calculatedResult, (value) {
    return _then(_self.copyWith(calculatedResult: value));
  });
}
}

// dart format on
