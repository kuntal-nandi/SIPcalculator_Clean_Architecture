import 'package:sip_calculator_clean_architecture/common/helper/extensions.dart';
import 'package:sip_calculator_clean_architecture/core/resources/data_state.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/data/models/lumpsum_data.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/data/models/sip_data.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/domain/entities/calculated_result_entity.dart';

import '../../domain/repository/sip_calculator_repository.dart';
import '../data_sources/sip_calculator_service.dart';

class SipCalculatorRepositoryImpl implements SIPCalculatorRepository {
  final SIPCalculatorService _sipCalculatorService;
  SipCalculatorRepositoryImpl(this._sipCalculatorService);
  @override
  Future<DataState<CalculatedResultEntity>> calculateLumpsumFutureValue({
    required LumpsumData lumpsumData,
  }) {
    try {
      final result = _sipCalculatorService.calculateLumpsumFutureValue(
        lumpsumInvestment: lumpsumData.lumpsumInvestmentAmount,
        annualRate: lumpsumData.returnRate.annualRate,
        totalYears: lumpsumData.timePeriod.totalYears,
      );
      return Future.value(
        DataSuccess(
          CalculatedResultEntity(
            investmentAmount: lumpsumData.lumpsumInvestmentAmount,
            totalReturns: result,
          ),
        ),
      );
    } catch (e) {
      return Future.value(DataFailed(e));
    }
  }

  @override
  Future<DataState<CalculatedResultEntity>> calculateSIPFutureValue({
    required SIPData sipData,
  }) {
    try {
      final result = _sipCalculatorService.calculateSIPFutureValue(
        monthlyInvestment: sipData.monthlyInvestment,
        monthlyRate: sipData.returnRate.monthlyRate,
        totalMonths: sipData.timePeriod.totalMonths,
      );
      return Future.value(
        DataSuccess(
          CalculatedResultEntity(
            investmentAmount:
                sipData.monthlyInvestment * sipData.timePeriod.totalMonths,
            totalReturns: result,
          ),
        ),
      );
    } catch (e) {
      return Future.value(DataFailed(e));
    }
  }
}
