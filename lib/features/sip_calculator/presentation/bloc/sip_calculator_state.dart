part of 'sip_calculator_bloc.dart';

@freezed
abstract class SipCalculatorState with _$SipCalculatorState {
  const SipCalculatorState._();
  const factory SipCalculatorState({
    required double amount,
    required double returnRate,
    required int timePeriod,
    required CalculatedResultEntity calculatedResult,
    required bool isLoading,
    required InvestmentType investmentType,
  }) = _SipCalculatorState;

  factory SipCalculatorState.initial() => SipCalculatorState(
    amount: 5000.0,
    returnRate: 12.0,
    timePeriod: 5,
    calculatedResult: CalculatedResultEntity.initial(),
    isLoading: false,
    investmentType: InvestmentType.SIP,
  );

  SIPData get toSIPData => SIPData(
    returnRate: returnRate,
    timePeriod: timePeriod.toDouble(),
    monthlyInvestment: amount,
  );

  LumpsumData get toLumpsumData => LumpsumData(
    returnRate: returnRate,
    timePeriod: timePeriod.toDouble(),
    lumpsumInvestmentAmount: amount,
  );
}
