import 'dart:math';

class SIPCalculatorService {
  /// Calculates the future value of a monthly investment given
  /// a monthly rate and the total number of months.
  ///
  /// The formula used is M = P x {[(1 + i)^n - 1] / i} x (1 + i)
  /// where:
  ///   M = future value
  ///   P = principal investment (monthly)
  ///   i = monthly interest rate (as a decimal)
  ///   n = number of months
  ///
  /// For example, if the monthly investment is 1000, the monthly
  /// interest rate is 0.01 (1%), and the total number of months is
  /// 12, the future value is 12,190.48.
  ///
  /// @param monthlyInvestment The monthly investment amount.
  /// @param monthlyRate The monthly rate as a decimal.
  /// @param totalMonths The total number of months.
  /// @return The future value of the investment.
  double calculateSIPFutureValue({
    required double monthlyInvestment, // monthly investment amount
    required double
    monthlyRate, // monthly rate as a decimal (e.g., 0.01 for 1%)
    required int totalMonths, // in months
  }) {
    double futureValue =
        monthlyInvestment *
        (((pow(1 + monthlyRate, totalMonths) - 1) / monthlyRate) *
            (1 + monthlyRate));
    return futureValue;
  }

  /// Calculates the future value of a lumpsum investment given
  /// an annual rate and the total number of years.
  ///
  /// The formula used is M = P x (1 + i)^n
  /// where:
  ///   M = future value
  ///   P = lumpsum investment amount
  ///   i = annual interest rate (as a decimal)
  ///   n = number of years
  ///
  /// For example, if the lumpsum investment is 1000, the annual
  /// interest rate is 0.08 (8%), and the total number of years is
  /// 10, the future value is 21,589.25.
  ///
  /// @param lumpsumInvestment The lumpsum investment amount.
  /// @param annualRate The annual rate as a decimal (e.g., 0.08 for 8%).
  /// @param totalYears The total number of years.
  /// @return The future value of the investment.
  double calculateLumpsumFutureValue({
    required double lumpsumInvestment, // lumpsum investment amount
    required double annualRate, // annual rate as a decimal (e.g., 0.08 for 8%)
    required int totalYears, // in years
  }) {
    double futureValue =
        lumpsumInvestment *
        pow(1 + annualRate, totalYears); // future value formula
    return futureValue;
  }
}
