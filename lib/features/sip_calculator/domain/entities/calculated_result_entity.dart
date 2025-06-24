import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sip_calculator_clean_architecture/common/helper/typedef_helpers.dart';

part 'calculated_result_entity.freezed.dart';

@freezed
abstract class CalculatedResultEntity with _$CalculatedResultEntity {
  const CalculatedResultEntity._();
  const factory CalculatedResultEntity({
    required InvestmentAmount investmentAmount,
    required double totalReturns,
  }) = _CalculatedResultEntity;
  double get estimatedReturns => totalReturns - investmentAmount;
  Map<String, double> get chartData => {
    'Investment Amount': investmentAmount,
    'Est. Returns': estimatedReturns,
  };
}
