import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/helper/typedef_helpers.dart';

part 'lumpsum_data.freezed.dart';

@freezed
abstract class LumpsumData with _$LumpsumData {
  const factory LumpsumData({
    required InvestmentAmount lumpsumInvestmentAmount,
    required ReturnRateParcentage returnRate,
    required TimePeriod timePeriod,
  }) = _LumpsumData;
}
