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

extension SipCalculatorEventSwitch on SipCalculatorEvent {
  T? mapSwitch<T>({
    required T Function(Started) started,
    required T Function(InvestmentTypeChanged) investmentTypeChanged,
    required T Function(AmountChanged) amountChanged,
    required T Function(ReturnRateChanged) returnRateChanged,
    required T Function(TimePeriodChanged) timePeriodChanged,
    required T Function(CalculateSIP) calculateClicked,
  }) {
    switch (this) {
      case final Started e:
        return started(e);
      case final InvestmentTypeChanged e:
        return investmentTypeChanged(e);
      case final AmountChanged e:
        return amountChanged(e);
      case final ReturnRateChanged e:
        return returnRateChanged(e);
      case final TimePeriodChanged e:
        return timePeriodChanged(e);
      case final CalculateSIP e:
        return calculateClicked(e);
    }
    return null;
  }
}
