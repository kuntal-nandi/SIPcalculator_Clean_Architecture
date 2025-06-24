import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/helper/typedef_helpers.dart';

part 'sip_data.freezed.dart';

@freezed
abstract class SIPData with _$SIPData {
  const factory SIPData({
    required ReturnRateParcentage returnRate,
    required TimePeriod timePeriod,
    required MonthlyInvestment monthlyInvestment,
  }) = _SIPData;
}
