import 'typedef_helpers.dart';

extension TimePeriodX on TimePeriod {
  int get totalYears => toInt();
  int get totalMonths => (this * 12).toInt();
}

extension ReturnRatePercentageX on ReturnRateParcentage {
  double get annualRate => (this / 100).toDouble();
  double get monthlyRate => (annualRate / 12).toDouble();
}

extension MonthlyInvestmentX on MonthlyInvestment {
  double get toDouble => this;
  InvestmentAmount totalInvestmentAmount(TimePeriod timePeriod) =>
      (this * timePeriod.totalMonths).toDouble();
}
