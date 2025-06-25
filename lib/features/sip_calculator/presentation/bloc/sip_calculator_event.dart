part of 'sip_calculator_bloc.dart';

@freezed
class SipCalculatorEvent with _$SipCalculatorEvent {
  const factory SipCalculatorEvent.started() = Started;
  const factory SipCalculatorEvent.investmentTypeChanged({
    required InvestmentType investmentType,
  }) = InvestmentTypeChanged;
  const factory SipCalculatorEvent.amountChanged({required double amount}) =
      AmountChanged;
  const factory SipCalculatorEvent.returnRateChanged({
    required double returnRate,
  }) = ReturnRateChanged;
  const factory SipCalculatorEvent.timePeriodChanged({
    required int timePeriod,
  }) = TimePeriodChanged;
  const factory SipCalculatorEvent.calculateClicked() = CalculateSIP;
}

extension SipCalculatorEventX on SipCalculatorEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InvestmentTypeChanged value)
    investmentTypeChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(ReturnRateChanged value) returnRateChanged,
    required TResult Function(TimePeriodChanged value) timePeriodChanged,
    required TResult Function(CalculateSIP value) calculateClicked,
  }) => throw UnimplementedError(
    'SipCalculatorEvent.map is not implemented. Please implement it in your code.',
  );
}
